//
//  CategoryCell.swift
//  MCart
//
//  Created by avi marathe on 22/09/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    
    @IBOutlet weak var categoryLable: UILabel!
    
    func UpdateViews(category : Category)
    {
        categoryImage.image = UIImage(named: category.categoryImage)
        categoryLable.text = category.categoryTitle
        
    }
    
    
    
    
}
