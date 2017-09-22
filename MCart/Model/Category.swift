
//
//  Category.swift
//  MCart
//
//  Created by avi marathe on 22/09/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import Foundation
struct Category {
    
    private(set) public var categoryTitle : String
    private(set) public var categoryImage : String
    
    init(title:String , image : String) {
        self.categoryTitle = title
        self.categoryImage = image
    }
    
    
}
