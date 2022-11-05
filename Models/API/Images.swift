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
    
    // MARK: - Init
    
    public init(thumbnail: Image?, small: Image?, regular: Image?) {
        self.thumbnail = thumbnail
        self.small = small
        self.regular = regular
    }
}

public struct Image: Codable {
    public let url: String?
    public let width, height: Int?
}
