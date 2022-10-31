//
//  Response.swift
//  Models
//
//  Created by Егор Бадмаев on 26.10.2022.
//

import Foundation

public struct Response: Codable {
    public let from, to, count: Int?
    public let links: Links?
    public let hits: [Hit]?
    
    enum CodingKeys: String, CodingKey {
        case from, to, count
        case links = "_links"
        case hits
    }
}
