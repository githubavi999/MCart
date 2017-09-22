//
//  DetailedCategoryCell.swift
//  MCart
//
//  Created by avi marathe on 22/09/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import UIKit

class DetailedCategoryCell: UICollectionViewCell {

    @IBOutlet weak var DetailedCategoryImage: UIImageView!
    
    @IBOutlet weak var DetailedCategoryTitle: UILabel!
    
    @IBOutlet weak var DetailedCategoryPrice: UILabel!
    
    
    
    func UpdateView(detailedCat : DetailedCategory)
    {
        DetailedCategoryTitle.text = detailedCat.title
        DetailedCategoryPrice.text = detailedCat.price
        DetailedCategoryImage.image = UIImage(named: detailedCat.imageName)
        
    }
    
    
}
