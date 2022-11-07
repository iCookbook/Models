//
//  Ingredient.swift
//  Models
//
//  Created by Егор Бадмаев on 26.10.2022.
//

public struct Ingredient: Codable {
    /// Ingredient's description (name and measure).
    public let text: String?
    /// Ingredient quantity.
    public let quantity: Double?
    /// Unit of measurement.
    public let measure: String?
    /// Ingredient name.
    public let food: String?
    /// Weight of the ingredient.
    public let weight: Double?
    /// Food category. For example: chicken.
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
    
    // MARK: - Init
    
    public init(text: String?, quantity: Double?, measure: String?, food: String?, weight: Double?, foodCategory: String?, foodID: String?, image: String?) {
        self.text = text
        self.quantity = quantity
        self.measure = measure
        self.food = food
        self.weight = weight
        self.foodCategory = foodCategory
        self.foodID = foodID
        self.image = image
    }
}
