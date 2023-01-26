//
//  Hit.swift
//  Models
//
//  Created by Егор Бадмаев on 12.12.2022.
//

/// Wrapper over recipe and link to itself.
public struct Hit: Decodable {
    /// Recipe itself.
    public let recipe: Recipe?
    /// Link to the recipe.
    public let links: HitLinks?
    
    enum CodingKeys: String, CodingKey {
        case recipe
        case links = "_links"
    }
    
    // MARK: - Init
    
    public init(recipe: Recipe?, links: HitLinks?) {
        self.recipe = recipe
        self.links = links
    }
}
