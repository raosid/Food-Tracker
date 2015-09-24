//
//  Meal.swift
//  Food Tracker
//
//  Created by Siddharth Rao on 9/24/15.
//  Copyright © 2015 Siddharth Rao. All rights reserved.
//

import UIKit

class Meal {
    
    // MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    
    init?(name: String, photo: UIImage?, rating: Int) {
        self.name = name
        self.photo = photo
        self.rating = rating
        
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
    
}