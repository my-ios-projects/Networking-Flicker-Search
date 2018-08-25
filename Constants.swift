//
//  Constants.swift
//  04 Flicker Finder
//
//  Created by Taha Magdy on 8/24/18.
//  Copyright © 2018 Taha Magdy. All rights reserved.
//

import Foundation
/*
 https://
 api.flickr.com/services/rest/?
 
 method=flickr.photos.search&
 api_key=0a8f374be6d7939edcd1d0f0a6b906b3&
 safe_search=1&
 extras=url_m&
 format=json&
 nojsoncallback=1&
 
 
 From UI:
 bbox=2.28,48.84,C2.30,C48.86
 text=Bentley << FROM USER
 
 */

// Members must  be static to be accessible to the project.
struct URL_info {
    
    
    static let scheme = "https"
    static let host = "api.flickr.com"
    static let path = "/services/rest/"

    
    
    // queries
    static let queries =
    [
        "method": "flickr.photos.search",
        "api_key": "0a8f374be6d7939edcd1d0f0a6b906b3",
        "safe_search": "1",
        "extras": "url_m",
        "format": "json",
        "nojsoncallback": "1"
    ]
}
