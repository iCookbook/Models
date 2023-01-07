//
//  RecipeDataTests.swift
//  Models-Unit-Tests
//
//  Created by Егор Бадмаев on 07.01.2023.
//

import XCTest
@testable import Models

class RecipeDataTests: XCTestCase {
    
    var recipeData: RecipeData!
    
    override func setUpWithError() throws {
        
    }
    
    override func tearDownWithError() throws {
        recipeData = nil
    }
    
    func testRecipeDataDefault() throws {
        recipeData = RecipeData.default
        
        XCTAssertEqual(recipeData.name, "")
        XCTAssertNotNil(recipeData.dateCreated)
        XCTAssertNil(recipeData.numberOfServings)
        XCTAssertNil(recipeData.proteins)
        XCTAssertNil(recipeData.fats)
        XCTAssertNil(recipeData.carbohydrates)
        XCTAssertNil(recipeData.calories)
        XCTAssertNil(recipeData.cookingTime)
        XCTAssertNil(recipeData.comment)
        XCTAssertNil(recipeData.ingredients)
        XCTAssertNil(recipeData.imageData)
        XCTAssertEqual(recipeData.steps?.count, 10)
    }
}
