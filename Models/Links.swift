//
//  Links.swift
//  Models
//
//  Created by Егор Бадмаев on 26.10.2022.
//

public struct Links: Codable {
    let next: Next?
}

public struct HitLinks: Codable {
    let linksSelf: Next?
    
    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
    }
}

public struct Next: Codable {
    let href: String?
    let title: String?
}
