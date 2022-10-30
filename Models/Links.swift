//
//  Links.swift
//  Models
//
//  Created by Егор Бадмаев on 26.10.2022.
//

public struct Links: Codable {
    /// Ссылка на следующую страницу.
    let next: Next?
}

public struct HitLinks: Codable {
    let linksSelf: Next?
    
    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
    }
}

public struct Next: Codable {
    /// Ссылка на следующий рецепт.
    let href: String?
    /// Заголовок для кнопки.
    let title: String?
}
