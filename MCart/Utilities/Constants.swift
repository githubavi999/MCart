//
//  Constants.swift
//  MCart
//
//  Created by avi marathe on 21/09/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import Foundation

//Segues
let To_REAR = "to_rear"
let TO_FRONT = "to_front"
let TO_LOGINVC = "to_LoginVc"
let TO_SIGN_UP = "to_signup"
let TO_DETAILED_VC = "to_detailedVC"

typealias completionHandler = ( _ Success : Bool) -> ()


//URL'S

let BASE_URL = "http://edeliveryapp.in/restaurant1/wp-json/wc/v2/"
let CATEGORY_URL = "http://edeliveryapp.in/restaurant1/wp-json/wc/v2/products/categories"

//HEADER
let HEADER = [ProductCategory]()
let AUTH_HEADER = ["Authorization":"[\(customerKey)&\(customerSecrete)]",
                   "containt-Type" : "application/json; charset=utf-8"
]


let customerKey = "ck_dbb6da1f4f925b3129c7c4de1c4c4c1d0476f0f6"
let customerSecrete = "cs_4a046285b108003fef18eaa01920b6d64b762843"





