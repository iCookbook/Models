//
//  Recipe.swift
//  Models
//
//  Created by Егор Бадмаев on 26.10.2022.
//

/// Wrapper over recipe and link to itself.
public struct Hit: Codable {
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

/// Recipe model.
public class Recipe: Codable {
    /// Name of the recipe.
    public let label: String?
    /// Image link.
    public let image: String?
    /// A structure with links to images with different sizes.
    public let images: Images?
    /// The source from where the recipe was taken.
    public let source: String?
    /// Source link.
    public let url: String?
    public let healthLabels, cautions, ingredientLines: [String]?
    /// Array of ingredients.
    public let ingredients: [Ingredient]?
    /// The number of calories and total weight of the dish.
    public let calories, totalWeight: Double?
    /// Number of servings.
    public let yield: Double?
    /// Cooking time.
    public let totalTime: Double?
    /// A list of all possible dietary labels, compiled based on information about nutrients in recipes.
    public let dietLabels: [Diet]?
    /// A list of all possible types of cuisine. Kitchen types refer to the kitchen that the recipe falls under.
    public let cuisineType: [Cuisine]?
    /// A list of all possible types of food. The types of dishes refer to the meals during the day in which the recipe is usually consumed.
    public let mealType: [Meal]?
    /// A list of all possible types of dishes. The types of dishes belong to the category of products to which the recipe belongs.
    public let dishType: [Dish]?
    /// Brief information on various data: proteins, fats, carbohydrates, calories, etc.
    public let digest: [Digest]?
    /// User's recipe description.
    public var description: String? = nil
    /// Image data.
    public var imageData: Data? = nil
    
    // MARK: - Init
    
    public init(label: String?, image: String?, images: Images?, source: String?, url: String?, healthLabels: [String]?, cautions: [String]?, ingredientLines: [String]?, ingredients: [Ingredient]?, calories: Double?, totalWeight: Double?, yield: Double?, totalTime: Double?, dietLabels: [Diet]?, cuisineType: [Cuisine]?, mealType: [Meal]?, dishType: [Dish]?, digest: [Digest]?) {
        self.label = label
        self.image = image
        self.images = images
        self.source = source
        self.url = url
        self.healthLabels = healthLabels
        self.cautions = cautions
        self.ingredientLines = ingredientLines
        self.ingredients = ingredients
        self.calories = calories
        self.totalWeight = totalWeight
        self.yield = yield
        self.totalTime = totalTime
        self.dietLabels = dietLabels
        self.cuisineType = cuisineType
        self.mealType = mealType
        self.dishType = dishType
        self.digest = digest
    }
}

extension Recipe: Equatable {
    public static func == (lhs: Recipe, rhs: Recipe) -> Bool {
        lhs.url == rhs.url
    }
}
