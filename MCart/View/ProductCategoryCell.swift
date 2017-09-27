//
//  CategoryCell.swift
//  MCart
//
//  Created by avi marathe on 22/09/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import UIKit

class ProductCategoryCell: UICollectionViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    
    @IBOutlet weak var categoryLable: UILabel!
 
    func Update(category:ProductCategory)
    {
        categoryLable.text = category.name
        
    }
    
    
    
}
