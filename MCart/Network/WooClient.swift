//
//  WooClient.swift
//  MCart
//
//  Created by avi marathe on 26/09/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import Foundation


public final class WooClient {
    
    let baseURL: NSURL
    var session: URLSession = URLSession.shared
    var consumerKey : String
    var consumerSecret : String
    
    
    let APIVersion = "v3"
    var versionPath : String {
        get{
            return "/wc-api/"+APIVersion
        }
    }
    
    public init(siteURL: NSURL,
                consumerKey: String,
                consumerSecret: String,
                configuration: URLSessionConfiguration = URLSessionConfiguration.default) {
        
        // only use self here to avoid ambiguity of the same name between variable and parameter
        self.consumerKey = consumerKey
        self.consumerSecret = consumerSecret
        self.baseURL = siteURL
        self.session = URLSession(configuration: configuration)
    }
    
    func getCoupon() {
        
    }
    
}

// MARK: - Coupon
extension WooClient {
    
    /// A POST HTTP request to create a new Coupon object to server
//    func createCoupon(coupon: Coupon, completionHandler:(_ success: Bool, _ error: NSError?) -> Void){
//        
//    }
    
    
}
