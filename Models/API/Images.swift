//
//  Images.swift
//  Models
//
//  Created by Егор Бадмаев on 26.10.2022.
//

public struct Images: Codable {
    public let thumbnail, small, regular: Image?
    
    enum CodingKeys: String, CodingKey {
        case thumbnail = "THUMBNAIL"
        case small = "SMALL"
        case regular = "REGULAR"
    }
}

public struct Image: Codable {
    public let url: String?
    public let width, height: Int?
}
