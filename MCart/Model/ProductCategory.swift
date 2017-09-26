
//
//  Category.swift
//  MCart
//
//  Created by avi marathe on 22/09/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import Foundation
public struct ProductCategory {
    var id : Int ///
    var name : String /// Category name
    var slug : String
    var parent : Int
    var description : String
    var display : String
    var images : [CategoryImageProperty]
    var menuOrder : Int
    var count : Int
}

public struct CategoryImageProperty {
    var id : Int
    var dateCreated : NSDate
    var dateModifier : NSDate
    var src : String
    var name : String
    var alt : String
}
