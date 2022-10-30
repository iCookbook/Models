//
//  Ingredient.swift
//  Models
//
//  Created by Егор Бадмаев on 26.10.2022.
//

public struct Ingredient: Codable {
    /// Название ингредиента.
    let text: String?
    /// Количество ингредиента.
    let quantity: Double?
    /// Единица измерения.
    let measure: String?
    /// Обобщённое название. Например: курица.
    let food: String?
    /// Вес.
    let weight: Double?
    /// Категория еды.
    let foodCategory: String?
    /// Идентификатор еды.
    let foodID: String?
    /// Ссылка на получение изображения.
    let image: String?
    
    enum CodingKeys: String, CodingKey {
        case text, quantity, measure, food, weight, foodCategory
        case foodID = "foodId"
        case image
    }
}
