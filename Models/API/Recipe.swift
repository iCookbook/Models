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
    /// Ссылка на изображение.
    let image: String?
    /// Стркуктура с ссылками на изображения с разными размерами.
    let images: Images?
    /// Источник, откуда был взят рецепт.
    let source: String?
    /// Ссылка на источник.
    let url: String?
    let shareAs: String?
    let healthLabels, cautions, ingredientLines: [String]?
    /// Массив ингридиентов.
    let ingredients: [Ingredient]?
    /// Калории и итоговый вес блюда.
    let calories, totalWeight: Double?
    /// Количество порций.
    let yield: Int?
    /// Время приготовления блюда.
    let totalTime: Int?
    /// Список всех возможных диетических этикеток, составленный на основе информации о питательных веществах в рецептах.
//    let dietLabels: [String]?
    let dietLabels: [Diet]?
    /// Список всех возможных видов кухни. Типы кухни относятся к кухне, под которую подпадает рецепт.
//    let cuisineType: [String]?
    let cuisineType: [Cuisine]?
    /// Список всех возможных видов еды. Типы блюд относятся к приемам пищи в течение дня, в которые обычно употребляется рецепт.
//    let mealType: [String]?
    let mealType: [Meal]?
    /// Список всех возможных видов блюд. Типы блюд относятся к категории продуктов, к которым относится рецепт.
//    let dishType: [String]?
    let dishType: [Dish]?
    /// Краткая информация по различным данным: белки, жиры, углеводы, калории и тд.
//    let digest: [String]?
    let digest: [Digest]?
}
