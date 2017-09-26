//
//  DetailedCategory.swift
//  MCart
//
//  Created by avi marathe on 22/09/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import Foundation
struct DetailedCategory{
    private(set) public var title : String
    private(set) public var price : String
    private(set) public var imageName : String
    
    init(title : String , price : String, imageName : String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
    
}
