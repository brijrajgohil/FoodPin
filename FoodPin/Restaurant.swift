//
//  Restaurant.swift
//  FoodPin
//
//  Created by Brijrajsinh Gohil on 28/1/16.
//  All rights reserved.
//

import Foundation

class Restaurant {
    var name = ""
    var type = ""
    var location = ""
    var image = ""
    var phone = ""
    var isVisited = false
    
    init(name:String, type:String, location:String, image:String, isVisited:Bool, phone: String) {
        self.name = name
        self.type = type
        self.location = location
        self.image = image
        self.isVisited = isVisited
        self.phone = phone
    }
}

