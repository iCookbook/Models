//
//  Response.swift
//  Models
//
//  Created by Егор Бадмаев on 26.10.2022.
//

import Foundation

struct Response: Codable {
    let from, to, count: Int?
    let links: Links?
    let hits: [Hit]?
    
    enum CodingKeys: String, CodingKey {
        case from, to, count
        case links = "_links"
        case hits
    }
}
