//
//  CategoryVC.swift
//  MCart
//
//  Created by avi marathe on 21/09/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class ProductCategoryVC: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
    
    @IBOutlet weak var collectionViews: UICollectionView!
    
   let categoryCell = [ProductCategoryCell]()
    @IBOutlet weak var menuBtn: UIButton!
    var client = [ProductCategory]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    
        collectionViews.delegate = self
        collectionViews.dataSource = self
        
        collectionViews.reloadData()
        
       
    }
   
    
    func product(completion :  @escaping completionHandler)
    {
        Alamofire.request(CATEGORY_URL, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON { (responce) in
            
            if responce.result.error == nil{
                guard let data = responce.data else{return}
                print(data)
                self.setUserInfo(data: data)
                completion(true)

            }
            else{
                completion(false)
                debugPrint(responce.result.error as Any)
            }
        }
        
        
    }
    
    
    func setUserInfo(data:Data)
    {
        let json = JSON(data:data)
        let id = json["id"].intValue
        let slug = json["slug"].stringValue
        let parent = json["parent"].intValue
        let name = json["name"].stringValue
        let description = json["description"].stringValue
        let display = json["display"].stringValue
        let menuOrder = json["menu_order"].intValue
        let count = json["count"].intValue
        let images  = json["image"].arrayValue
        
        ProductCategory.init(id: id, name: name, slug: slug, parent: parent, description: description, display: display, images: images as! [CategoryImageProperty], menuOrder: menuOrder, count: count)
        

    }

    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dcCell", for: indexPath) as? ProductCategoryCell{
            let product = client[indexPath.row]
            cell.Update(category: product)
        return cell
        }
        return ProductCategoryCell()
    
    
    }
    
    
    
    
    
    
    
    
    
    


}
