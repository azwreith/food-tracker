//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Ujjwal Arora on 2/9/18.
//  Copyright © 2018 Ujjwal Arora. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // MARK: Meal Class Tests
    
    // Confirm that the Meal initializer returns a Meal object when passed valid parameters.
    func testMealInitializationSucceeds() {
        
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
        
    }
    
    // Confirm that the Meal initializer returns nil when passed a negative rating or empty name
    func testMealInitializationFails() {
        
        // Negative rating
        let negativeRatingMeal = Meal.init(name: "negativeRating", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Empty name
        let emptyNameMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyNameMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "largeRating", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }
    
    
}
