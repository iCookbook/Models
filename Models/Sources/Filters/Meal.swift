//
//  Meal.swift
//  Models
//
//  Created by Егор Бадмаев on 30.10.2022.
//

/// Meal types.
public enum Meal: String, Codable, CaseIterable {
    case breakfast
    case brunch
    case lunchDinner = "lunch/dinner"
    case snack
    case teatime
}

extension Meal: FilterProtocol {
    public var description: String {
        self.rawValue
    }
    
    public var emoji: String? {
        switch self {
        case .breakfast:
            return "🥞"
        case .brunch:
            return "🍎"
        case .lunchDinner:
            return "🥘"
        case .snack:
            return "🥪"
        case .teatime:
            return "☕️"
        }
    }
}
