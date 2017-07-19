//
//  DemoURL.swift
//  Cassini
//
//  Created by NareshNaidu on 19/05/17.
//  Copyright © 2017 NareshNaidu. All rights reserved.
//

import Foundation

struct DemoURL
{
    static let standford = URL(string: "http://stanford.edu/about/images/intro_about.jpg")
    
    static var NASA: Dictionary<String,URL> = {
        let NASAURLStrings = ["Cassini" : "http://stanford.edu/about/images/intro_about.jpg",
                              "Earth" : "http://www.wallpaper.net.in/file/8200/600x380/16:9/beautiful-girls-hd-wallpaper_251127314.jpg",
                              "Satrun" : "http://www.prizms-ahealingplace.com/images/150_principle5.jpg"
        ]
        var urls = Dictionary<String,URL>()
        for (key, value) in NASAURLStrings {
            urls[key] = URL(string: value)
        }
        return urls
    }()
    
}
