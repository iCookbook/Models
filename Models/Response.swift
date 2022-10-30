//
//  Response.swift
//  Models
//
//  Created by Егор Бадмаев on 26.10.2022.
//

import Foundation

public struct Response: Codable {
    /// Количество результатов поиска.
    let from, to: Int?
    /// Общее количество найденных результатов поиска.
    let count: Int?
    /// Ссылка на следующий запрос.
    let links: Links?
    /// Набор рецептов, **попавших** под выбранные критерии.
    let hits: [Hit]?
    
    enum CodingKeys: String, CodingKey {
        case from, to, count
        case links = "_links"
        case hits
    }
}
