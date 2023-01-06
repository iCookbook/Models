//
//  RecipeData.swift
//  Persistence
//
//  Created by Егор Бадмаев on 02.01.2023.
//

/// Represents `Recipe: NSManagedObject` class to simplify initializing and providing data to interactor.
///
/// It represents all the properties from `Recipe` class.
public struct RecipeData {
    public let name: String
    public let dateCreated: Date
    public let numberOfServings: Int32
    public let proteins: Double
    public let fats: Double
    public let carbohydrates: Double
    public let calories: Double
    public let cookingTime: Int32
    public let comment: String?
    public let ingredients: [String]?
    public let imageData: Data?
    public let steps: [StepData]?
    
    public init(name: String, dateCreated: Date, numberOfServings: Int32, proteins: Double, fats: Double, carbohydrates: Double, calories: Double, cookingTime: Int32, comment: String?, ingredients: [String]?, imageData: Data?, steps: [StepData]?) {
        self.name = name
        self.dateCreated = dateCreated
        self.numberOfServings = numberOfServings
        self.proteins = proteins
        self.fats = fats
        self.carbohydrates = carbohydrates
        self.calories = calories
        self.cookingTime = cookingTime
        self.comment = comment
        self.ingredients = ingredients
        self.imageData = imageData
        self.steps = steps
    }
}

extension RecipeData {
    public init() {
        self.init(name: "",
                  dateCreated: Date(),
                  numberOfServings: 0,
                  proteins: 0.0,
                  fats: 0.0,
                  carbohydrates: 0.0,
                  calories: 0.0,
                  cookingTime: 0,
                  comment: nil,
                  ingredients: nil,
                  imageData: nil,
                  steps: nil)
    }
}
