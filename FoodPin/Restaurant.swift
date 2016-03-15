//
//  Restaurant.swift
//  FoodPin
//
//  Created by Brijrajsinh Gohil on 14/8/15.
//  All rights reserved.
//
import Foundation

class Restaurant {
    var name = ""
    var type = ""
    var location = ""
    var phoneNumber = ""
    var image = ""
    var isVisited = false
    var rating = ""
    
    init(name:String, type:String, location:String, phoneNumber:String, image:String, isVisited:Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.phoneNumber = phoneNumber
        self.image = image
        self.isVisited = isVisited
    }
}

