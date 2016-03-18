//
//  Restaurant.swift
//  FoodPin
//
//  Created by Brijrajsinh Gohil.
//  Copyright © 2016 Brijrajsinh Gohil. All rights reserved.
//

import Foundation
import CoreData

class Restaurant:NSManagedObject {
    @NSManaged var name:String!
    @NSManaged var type:String!
    @NSManaged var location:String!
    @NSManaged var phoneNumber:String?
    @NSManaged var image:NSData?
    @NSManaged var isVisited:NSNumber?
    @NSManaged var rating:String?
}

