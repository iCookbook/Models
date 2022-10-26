//
//  Recipe.swift
//  Models
//
//  Created by Егор Бадмаев on 26.10.2022.
//

struct Hit: Codable {
    let recipe: Recipe?
    let links: HitLinks?
    
    enum CodingKeys: String, CodingKey {
        case recipe
        case links = "_links"
    }
}

struct Recipe: Codable {
    let uri: String?
    let label: String?
    let image: String?
    let images: Images?
    let source: String?
    let url: String?
    let shareAs: String?
    let yield: Int?
    let dietLabels, healthLabels, cautions, ingredientLines: [String]?
    let ingredients: [Ingredient]?
    let calories, totalWeight: Double?
    let totalTime: Int?
    let cuisineType, mealType, dishType: [String]?
//    let totalNutrients, totalDaily: [String: Total]?
    let digest: [Digest]?
}
