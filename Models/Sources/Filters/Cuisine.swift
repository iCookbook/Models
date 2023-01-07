//
//  Cuisine.swift
//  Models
//
//  Created by Егор Бадмаев on 30.10.2022.
//

/// Various cuisines of the world.
public enum Cuisine: String, Codable {
    case american = "american"
    case asian = "asian"
    case british = "british"
    case caribbean = "caribbean"
    case centralEurope = "central europe"
    case chinese = "chinese"
    case easternEurope = "eastern europe"
    case french = "french"
    case greek = "greek"
    case indian = "indian"
    case italian = "italian"
    case japanese = "japanese"
    case korean = "korean"
    case kosher = "kosher"
    case mediterranean = "mediterranean"
    case mexican = "mexican"
    case middleEastern = "middle eastern"
    case nordic = "nordic"
    case southAmerican = "south american"
    case southEastAsian = "south east asian"
    case world = "world"
}

extension Cuisine: FilterProtocol {
    public var description: String {
        self.rawValue
    }
    
    public var emoji: String? {
        switch self {
        case .american:
            return "🇺🇸"
        case .asian:
            return "🌏"
        case .british:
            return "🇬🇧"
        case .chinese:
            return "🇨🇳"
        case .easternEurope:
            return "🥟"
        case .french:
            return "🇫🇷"
        case .greek:
            return "🇬🇷"
        case .indian:
            return "🇮🇳"
        case .italian:
            return "🇮🇹"
        case .japanese:
            return "🇯🇵"
        case .korean:
            return "🇰🇷"
        case .mexican:
            return "🇲🇽"
        case .nordic:
            return "🇳🇴"
        case .world:
            return "🌏"
        default:
            return ""
        }
    }
    
    /// List of instances of this enum with emoji.
    public static var cuisines: [Cuisine] {
        return [.american, .asian, .british, .chinese, .easternEurope, .french, .greek, .indian, .italian, .japanese, .korean, .mexican, .nordic, .world]
    }
}
