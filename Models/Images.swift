//
//  Images.swift
//  Models
//
//  Created by Егор Бадмаев on 26.10.2022.
//

public struct Images: Codable {
    /**
     Image Size | Dimensions
     Thumbnail  | 100×100
     Small          | 200×200
     Regular      | 300×300
     Large         | 600×600
     */
    let thumbnail, small, regular: Image?
    
    enum CodingKeys: String, CodingKey {
        case thumbnail = "THUMBNAIL"
        case small = "SMALL"
        case regular = "REGULAR"
    }
}

public struct Image: Codable {
    let url: String?
    let width, height: Int?
}
