//
//  RecipeTests.swift
//  Models-Unit-Tests
//
//  Created by Егор Бадмаев on 12.12.2022.
//

import XCTest
@testable import Models

class RecipeTests: XCTestCase {
    
    /// SUT
    var recipe: Recipe!
    
    override func setUpWithError() throws {
        recipe = Recipe(label: nil, image: nil, images: nil, source: nil, url: nil, ingredients: nil, calories: nil, totalWeight: nil, yield: nil, totalTime: nil, dietLabels: nil, cuisineType: nil, mealType: nil, dishType: nil, digest: nil)
    }
    
    override func tearDownWithError() throws {
        recipe = nil
    }
    
    /// We need to check that additional properties (that we've added) are equal to `nil`.
    ///
    /// If it's not, we may have errors in other modules on handling not nil values in these fields.
    func testNilDataOnInit() throws {
        XCTAssertNil(recipe.description)
        XCTAssertNil(recipe.imageData)
    }
    
    /// Checks whether `Recipe` model acts like reference-type.
    ///
    /// Since we need to cache it in NSCache and to provide data to it, we use class, not struct. So, in this test, we need to check that this model acts like reference-type.
    func testReferenceType() throws {
        recipe.description = "Test 1"
        recipe.imageData = Data()
        
        let a = recipe
        a?.description = "Test 2"
        a?.imageData = Data([1])
        
        XCTAssertEqual(recipe.description, a?.description)
        XCTAssertEqual(recipe.imageData, a?.imageData)
    }
}
