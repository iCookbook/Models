//
//  Recipe.swift
//  Models
//
//  Created by Егор Бадмаев on 26.10.2022.
//

public struct Hit: Codable {
    let recipe: Recipe?
    let links: HitLinks?
    
    enum CodingKeys: String, CodingKey {
        case recipe
        case links = "_links"
    }
}

public struct Recipe: Codable {
    let uri: String?
    let label: String?
    /// Image link.
    let image: String?
    /// A structure with links to images with different sizes.
    let images: Images?
    /// The source from where the recipe was taken.
    let source: String?
    /// Source link.
    let url: String?
    let shareAs: String?
    let healthLabels, cautions, ingredientLines: [String]?
    /// Array of ingredients.
    let ingredients: [Ingredient]?
    /// The number of calories and total weight of the dish.
    let calories, totalWeight: Double?
    /// Number of servings.
    let yield: Double?
    /// Cooking time.
    let totalTime: Double?
    /// A list of all possible dietary labels, compiled based on information about nutrients in recipes.
    let dietLabels: [Diet]?
    /// A list of all possible types of cuisine. Kitchen types refer to the kitchen that the recipe falls under.
    let cuisineType: [Cuisine]?
    /// A list of all possible types of food. The types of dishes refer to the meals during the day in which the recipe is usually consumed.
    let mealType: [Meal]?
    /// A list of all possible types of dishes. The types of dishes belong to the category of products to which the recipe belongs.
    let dishType: [Dish]?
    /// Brief information on various data: proteins, fats, carbohydrates, calories, etc.
    let digest: [Digest]?
}
