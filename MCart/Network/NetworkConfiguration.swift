//
//  NetworkConfiguration.swift
//  MCart
//
//  Created by avi marathe on 26/09/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import Foundation

public final class NetworkConfiguration {
    
    public static var shared: NetworkConfiguration!
    var session: URLSession = URLSession.shared
    let baseURL: NSURL
    let consumerKey : String
    let consumerSecret : String
    
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
    
}
