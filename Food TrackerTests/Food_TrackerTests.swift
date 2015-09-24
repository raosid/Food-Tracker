//
//  Food_TrackerTests.swift
//  Food TrackerTests
//
//  Created by Siddharth Rao on 9/21/15.
//  Copyright © 2015 Siddharth Rao. All rights reserved.
//

import XCTest
@testable import Food_Tracker

class Food_TrackerTests: XCTestCase {
    //Mark: FoodTracker Tests
    
    // Tests to confirm that the Meal initializer returns when no 
    // name or a negative rating is provided.
    func testMealInitialization() {
        //Pass Case
        let potentialItem = Meal(name: "newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure cases.
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative Ratings are invalid, be positive")
    }
}
