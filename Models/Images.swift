//
//  Images.swift
//  Models
//
//  Created by Егор Бадмаев on 26.10.2022.
//

struct Images: Codable {
    let thumbnail, small, regular: Image?
    
    enum CodingKeys: String, CodingKey {
        case thumbnail = "THUMBNAIL"
        case small = "SMALL"
        case regular = "REGULAR"
    }
}

struct Image: Codable {
    let url: String?
    let width, height: Int?
}
