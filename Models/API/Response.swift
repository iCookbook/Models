//
//  Response.swift
//  Models
//
//  Created by Егор Бадмаев on 26.10.2022.
//

import Foundation

/// Server's response.
public struct Response: Codable {
    public let from, to, count: Int?
    public let links: Links?
    public let hits: [Hit]?
    
    enum CodingKeys: String, CodingKey {
        case from, to, count
        case links = "_links"
        case hits
    }
    
    // MARK: - Init
    
    public init(from: Int?, to: Int?, count: Int?, links: Links?, hits: [Hit]?) {
        self.from = from
        self.to = to
        self.count = count
        self.links = links
        self.hits = hits
    }
}
