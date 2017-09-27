
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
    
    
    init(id: Int , name: String, slug: String, parent: Int, description: String, display: String, images:[CategoryImageProperty], menuOrder: Int, count: Int)
    {
        self.id = id
        self.name = name
        self.parent = parent
        self.description = description
        self.display = display
        self.menuOrder = menuOrder
        self.images = images
        self.count = count
        self.slug = slug
    }
    
    
    
}

public struct CategoryImageProperty {
    var id : Int
    var dateCreated : NSDate
    var dateModifier : NSDate
    var src : String
    var name : String
    var alt : String

    init(id:Int, dateCreated: NSDate, dateModifier: NSDate, src: String, name: String, alt: String) {
        self.id = id
        self.dateCreated = dateCreated
        self.dateModifier = dateModifier
        self.src = src
        self.name = name
        self.alt = alt
    }



}
