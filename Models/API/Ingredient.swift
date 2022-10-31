//
//  Ingredient.swift
//  Models
//
//  Created by Егор Бадмаев on 26.10.2022.
//

public struct Ingredient: Codable {
	/// Ingredient name.
    public let text: String?
    /// Ingredient quantity.
    public let quantity: Double?
    /// Unit of measurement.
    public let measure: String?
    /// Generalized name. For example: chicken.
    public let food: String?
    /// Weight of the ingredient.
    public let weight: Double?
    /// Food category.
    public let foodCategory: String?
    /// Food identifier.
    public let foodID: String?
    /// Image source link.
    public let image: String?
    
    enum CodingKeys: String, CodingKey {
        case text, quantity, measure, food, weight, foodCategory
        case foodID = "foodId"
        case image
    }
}
