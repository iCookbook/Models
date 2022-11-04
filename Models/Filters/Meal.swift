//
//  Meal.swift
//  Models
//
//  Created by Егор Бадмаев on 30.10.2022.
//

/// Meal types.
public enum Meal: String, Codable {
    case breakfast
    case brunch
    case lunchDinner = "lunch/dinner"
    case snack
    case teatime
}
