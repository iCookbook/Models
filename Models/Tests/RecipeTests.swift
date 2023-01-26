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
    
    override func tearDownWithError() throws {
        recipe = nil
    }
    
    /// We need to check that additional properties (that we've added) are equal to `nil`.
    ///
    /// If it's not, we may have errors in other modules on handling not nil values in these fields.
    func testNilDataOnInit() throws {
        recipe = Recipe(label: nil, image: nil, images: nil, source: nil, url: nil, ingredients: nil, calories: nil, totalWeight: nil, yield: nil, totalTime: nil, dietLabels: nil, cuisineType: nil, mealType: nil, dishType: nil, digest: nil)
        
        XCTAssertNil(recipe.description)
        XCTAssertNil(recipe.imageData)
    }
    
    /// Checks whether `Recipe` model acts like reference-type.
    ///
    /// Since we need to cache it in NSCache and to provide data to it, we use class, not struct. So, in this test, we need to check that this model acts like reference-type.
    func testReferenceType() throws {
        recipe = Recipe(label: nil, image: nil, images: nil, source: nil, url: nil, ingredients: nil, calories: nil, totalWeight: nil, yield: nil, totalTime: nil, dietLabels: nil, cuisineType: nil, mealType: nil, dishType: nil, digest: nil)
        
        recipe.description = "Test 1"
        recipe.imageData = Data()
        
        let a = recipe
        a?.description = "Test 2"
        a?.imageData = Data([1])
        
        XCTAssertEqual(recipe.description, a?.description)
        XCTAssertEqual(recipe.imageData, a?.imageData)
    }
    
    // MARK: - Decodable tests
    
    func test_decodingRecipe_fullData() throws {
        recipe = try? JSONDecoder().decode(Recipe.self, from: recipe1)
        
        XCTAssertNotNil(recipe, "The result of decoding should not be nil")
    }
    
    func test_decodingRecipe_requiredData() throws {
        recipe = try? JSONDecoder().decode(Recipe.self, from: recipe2)
        
        XCTAssertNotNil(recipe, "The result of decoding should not be nil")
    }
    
    func test_decodingRecipe_withoutDigestAndIngredients() throws {
        recipe = try? JSONDecoder().decode(Recipe.self, from: recipe3)
        
        XCTAssertNotNil(recipe, "The result of decoding should not be nil")
        XCTAssertNil(recipe?.digest)
        XCTAssertNil(recipe?.ingredients)
    }
}

/// Full data provided by the API.
private let recipe1 = Data("""
{
"uri": "http://www.edamam.com/ontologies/edamam.owl#recipe_85a7a6ca4c8a65b1fe392154379b4026",
"label": "Pasta Helper Stroganoff",
"image": "link to the image",
"images": {
  "THUMBNAIL": {
    "url": "link to the image",
    "width": 100,
    "height": 100
  },
  "SMALL": {
    "url": "link to the image",
    "width": 200,
    "height": 200
  },
  "REGULAR": {
    "url": "link to the image",
    "width": 300,
    "height": 300
  },
  "LARGE": {
    "url": "link to the image",
    "width": 600,
    "height": 600
  }
},
"source": "momables.com",
"url": "https://www.momables.com/homemade-pasta-helper-stroganoff-recipe/",
"shareAs": "http://www.edamam.com/recipe/pasta-helper-stroganoff-85a7a6ca4c8a65b1fe392154379b4026/meat",
"yield": 4,
"dietLabels": [],
"healthLabels": [
  "Egg-Free",
  "Peanut-Free"
],
"cautions": [
  "Gluten",
  "Wheat"
],
"ingredientLines": [
  "1 lb. meat",
  "8 oz. pasta"
],
"ingredients": [
  {
    "text": "1 lb. meat",
    "quantity": 1,
    "measure": "pound",
    "food": "meat",
    "weight": 453.59237,
    "foodCategory": "meats",
    "foodId": "food_bknby1la98smrsbwnthinbam42nj",
    "image": "https://www.edamam.com/food-img/bab/bab88ab3ea40d34e4c8ae35d6b30344a.jpg"
  },
  {
    "text": "8 oz. pasta",
    "quantity": 8,
    "measure": "ounce",
    "food": "pasta",
    "weight": 226.796185,
    "foodCategory": "grains",
    "foodId": "food_a8hs60uayl5icia1qe8qoba1kwp8",
    "image": "https://www.edamam.com/food-img/296/296ff2b02ef3822928c3c923e22c7d19.jpg"
  }
],
"calories": 2482.202677350742,
"totalWeight": 1732.2843883337594,
"totalTime": 0,
"cuisineType": [
  "italian"
],
"mealType": [
  "lunch/dinner"
],
"dishType": [
  "main course"
],
"totalNutrients": {
  "ENERC_KCAL": {
    "label": "Energy",
    "quantity": 2482.202677350742,
    "unit": "kcal"
  }
},
"digest": [
  {
    "label": "Fat",
    "tag": "FAT",
    "schemaOrgTag": "fatContent",
    "total": 111.22374872383341,
    "hasRDI": true,
    "daily": 171.11345957512833,
    "unit": "g"
  },
  {
    "label": "Carbs",
    "tag": "CHOCDF",
    "schemaOrgTag": "carbohydrateContent",
    "total": 218.56908468368005,
    "hasRDI": true,
    "daily": 72.85636156122668,
    "unit": "g"
  },
  {
    "label": "Protein",
    "tag": "PROCNT",
    "schemaOrgTag": "proteinContent",
    "total": 153.2610947253337,
    "hasRDI": true,
    "daily": 306.5221894506674,
    "unit": "g"
  }
]
}
""".utf8)

/// Enough for decoding in our project.
private let recipe2 = Data("""
{
"uri": "http://www.edamam.com/ontologies/edamam.owl#recipe_85a7a6ca4c8a65b1fe392154379b4026",
"label": "Pasta Helper Stroganoff",
"image": "link to the image",
"images": {
  "THUMBNAIL": {
    "url": "link to the image",
    "width": 100,
    "height": 100
  },
  "SMALL": {
    "url": "link to the image",
    "width": 200,
    "height": 200
  },
  "REGULAR": {
    "url": "link to the image",
    "width": 300,
    "height": 300
  },
  "LARGE": {
    "url": "link to the image",
    "width": 600,
    "height": 600
  }
},
"source": "momables.com",
"url": "https://www.momables.com/homemade-pasta-helper-stroganoff-recipe/",
"shareAs": "http://www.edamam.com/recipe/pasta-helper-stroganoff-85a7a6ca4c8a65b1fe392154379b4026/meat",
"yield": 4,
"dietLabels": [],
"ingredients": [
  {
    "text": "1 lb. meat",
    "quantity": 1,
    "measure": "pound",
    "food": "meat",
    "weight": 453.59237,
    "foodCategory": "meats",
    "foodId": "food_bknby1la98smrsbwnthinbam42nj",
    "image": "https://www.edamam.com/food-img/bab/bab88ab3ea40d34e4c8ae35d6b30344a.jpg"
  },
  {
    "text": "8 oz. pasta",
    "quantity": 8,
    "measure": "ounce",
    "food": "pasta",
    "weight": 226.796185,
    "foodCategory": "grains",
    "foodId": "food_a8hs60uayl5icia1qe8qoba1kwp8",
    "image": "https://www.edamam.com/food-img/296/296ff2b02ef3822928c3c923e22c7d19.jpg"
  }
],
"calories": 2482.202677350742,
"totalWeight": 1732.2843883337594,
"totalTime": 0,
"cuisineType": [
  "italian"
],
"mealType": [
  "lunch/dinner"
],
"dishType": [
  "main course"
],
"digest": [
  {
    "label": "Fat",
    "tag": "FAT",
    "schemaOrgTag": "fatContent",
    "total": 111.22374872383341,
    "hasRDI": true,
    "daily": 171.11345957512833,
    "unit": "g"
  },
  {
    "label": "Carbs",
    "tag": "CHOCDF",
    "schemaOrgTag": "carbohydrateContent",
    "total": 218.56908468368005,
    "hasRDI": true,
    "daily": 72.85636156122668,
    "unit": "g"
  },
  {
    "label": "Protein",
    "tag": "PROCNT",
    "schemaOrgTag": "proteinContent",
    "total": 153.2610947253337,
    "hasRDI": true,
    "daily": 306.5221894506674,
    "unit": "g"
  }
]
}
""".utf8)

/// Without digest and ingredients
private let recipe3 = Data("""
{
"uri": "http://www.edamam.com/ontologies/edamam.owl#recipe_85a7a6ca4c8a65b1fe392154379b4026",
"label": "Pasta Helper Stroganoff",
"image": "link to the image",
"images": {
  "THUMBNAIL": {
    "url": "link to the image",
    "width": 100,
    "height": 100
  },
  "SMALL": {
    "url": "link to the image",
    "width": 200,
    "height": 200
  },
  "REGULAR": {
    "url": "link to the image",
    "width": 300,
    "height": 300
  },
  "LARGE": {
    "url": "link to the image",
    "width": 600,
    "height": 600
  }
},
"source": "momables.com",
"url": "https://www.momables.com/homemade-pasta-helper-stroganoff-recipe/",
"shareAs": "http://www.edamam.com/recipe/pasta-helper-stroganoff-85a7a6ca4c8a65b1fe392154379b4026/meat",
"yield": 4,
"dietLabels": [],
"calories": 2482.202677350742,
"totalWeight": 1732.2843883337594,
"totalTime": 0,
"cuisineType": [
  "italian"
],
"mealType": [
  "lunch/dinner"
],
"dishType": [
  "main course"
]
}
""".utf8)
