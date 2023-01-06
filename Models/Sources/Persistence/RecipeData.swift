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
    public var name: String
    public var dateCreated: Date
    public var numberOfServings: Int32?
    public var proteins: Double?
    public var fats: Double?
    public var carbohydrates: Double?
    public var calories: Double?
    public var cookingTime: Int32?
    public var comment: String?
    public var ingredients: [String]?
    public var imageData: Data?
    public var steps: [StepData]?
    
    public init(name: String, dateCreated: Date, numberOfServings: Int32?, proteins: Double?, fats: Double?, carbohydrates: Double?, calories: Double?, cookingTime: Int32?, comment: String?, ingredients: [String]?, imageData: Data?, steps: [StepData]?) {
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

extension RecipeData: Equatable {
    public static func == (lhs: RecipeData, rhs: RecipeData) -> Bool {
        return lhs.name == rhs.name &&
        lhs.dateCreated == rhs.dateCreated &&
        lhs.numberOfServings == rhs.numberOfServings &&
        lhs.proteins == rhs.proteins &&
        lhs.fats == rhs.fats &&
        lhs.carbohydrates == rhs.carbohydrates &&
        lhs.calories == rhs.calories &&
        lhs.cookingTime == rhs.cookingTime &&
        lhs.comment == rhs.comment &&
        lhs.ingredients == rhs.ingredients &&
        lhs.imageData == rhs.imageData
    }
}

extension RecipeData {
    public static var `default`: RecipeData {
        RecipeData(name: "",
                   dateCreated: Date(),
                   numberOfServings: nil,
                   proteins: nil,
                   fats: nil,
                   carbohydrates: nil,
                   calories: nil,
                   cookingTime: nil,
                   comment: nil,
                   ingredients: nil,
                   imageData: nil,
                   steps: [StepData(text: "", imageData: nil),
                           StepData(text: "", imageData: nil),
                           StepData(text: "", imageData: nil),
                           StepData(text: "", imageData: nil),
                           StepData(text: "", imageData: nil),
                           StepData(text: "", imageData: nil),
                           StepData(text: "", imageData: nil),
                           StepData(text: "", imageData: nil),
                           StepData(text: "", imageData: nil),
                           StepData(text: "", imageData: nil)]
        )
    }
}
