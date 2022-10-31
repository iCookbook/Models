//
//  Ingredient.swift
//  Models
//
//  Created by Егор Бадмаев on 26.10.2022.
//

public struct Ingredient: Codable {
    public let text: String?
    public let quantity: Double?
    public let measure: String?
    public let food: String?
    public let weight: Double?
    public let foodCategory, foodID: String?
    public let image: String?
    
    enum CodingKeys: String, CodingKey {
        case text, quantity, measure, food, weight, foodCategory
        case foodID = "foodId"
        case image
    }
}
