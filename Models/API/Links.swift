//
//  Links.swift
//  Models
//
//  Created by Егор Бадмаев on 26.10.2022.
//

public struct Links: Codable {
    public let next: Next?
}

public struct HitLinks: Codable {
    public let linksSelf: Next?
    
    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
    }
}

public struct Next: Codable {
    /// URL link.
    public let href: String?
    /// A title specifying what kind of link it is.
    public let title: String?
}
