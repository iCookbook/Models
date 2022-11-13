//
//  Dish.swift
//  Models
//
//  Created by Егор Бадмаев on 30.10.2022.
//

/// Various types of dishes provided by the API.
public enum Dish: String, Codable {
    case alcoholCocktail = "alcohol cocktail"
    case biscuitsAndCookies = "biscuits and cookies"
    case bread = "bread"
    case cereals = "cereals"
    case condimentsAndSauces = "condiments and sauces"
    case desserts = "desserts"
    case drinks = "drinks"
    case egg = "egg"
    case iceCreamAndCustard = "ice cream and custard"
    case mainCourse = "main course"
    case pancake = "pancake"
    case pasta = "pasta"
    case pastry = "pastry"
    case piesAndTarts = "pies and tarts"
    case pizza = "pizza"
    case preps = "preps"
    case preserve = "preserve"
    case salad = "salad"
    case sandwiches = "sandwiches"
    case seafood = "seafood"
    case sideDish = "side dish"
    case soup = "soup"
    case specialOccasions = "special occasions"
    case starter = "starter"
    case sweets = "sweets"
}

extension Dish {
    public var emoji: String {
        switch self {
        case .alcoholCocktail:
            return "🍸"
        case .biscuitsAndCookies:
            return "🍪"
        case .bread:
            return "🍞"
        case .cereals:
            return "🌾"
        case .condimentsAndSauces:
            return "🧂"
        case .desserts:
            return "🍰"
        case .drinks:
            return "🍹"
        case .egg:
            return "🥚"
        case .iceCreamAndCustard:
            return "🍦"
        case .mainCourse:
            return "🥘"
        case .pancake:
            return "🥞"
        case .pasta:
            return "🍝"
        case .pastry:
            return "🥐"
        case .piesAndTarts:
            return "🥧"
        case .pizza:
            return "🍕"
        case .preps:
            return "🧆"
        case .preserve:
            return "🥫"
        case .salad:
            return "🥗"
        case .sandwiches:
            return "🥪"
        case .seafood:
            return "🍤"
        case .sideDish:
            return "🥔"
        case .soup:
            return "🍵"
        case .specialOccasions:
            return "🫕"
        case .starter:
            return "🍲"
        case .sweets:
            return "🍬"
        }
    }
}
