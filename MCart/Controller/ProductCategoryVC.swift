//
//  CategoryVC.swift
//  MCart
//
//  Created by avi marathe on 21/09/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import UIKit
import Alamofire


class ProductCategoryVC: UIViewController {
    
    @IBOutlet weak var menuBtn: UIButton!
    var client = [ProductCategory]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
    }
   
    
    
    
    func findUserByEmail(completion :  @escaping completionHandler)
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
        let id = json["id"].stringValue
        let email = json["email"].stringValue
        let color = json["avatarColor"].stringValue
        let name = json["name"].stringValue
        let avatarName = json["avatarName"].stringValue
        
        
//        UserDataService.instance.userData(id: id, avatarName: avatarName,  avatarColor: color , email: email, name: name)
//
    }

    


}
