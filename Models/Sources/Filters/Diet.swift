//
//  Diet.swift
//  Models
//
//  Created by Егор Бадмаев on 30.10.2022.
//

/// Various types of diets provided by the API.
public enum Diet: String, Codable, CaseIterable {
    /// Protein/Fat/Carb values in 15/35/50 ratio.
    case balanced = "Balanced"
    /// More than 5g fiber per serving.
    case highFiber = "High-Fiber"
    /// More than 50% of total calories from proteins.
    case highProtein = "High-Protein"
    /// Less than 20% of total calories from carbs.
    case lowCarb = "Low-Carb"
    /// Less than 15% of total calories from fat.
    case lowFat = "Low-Fat"
    /// Less than 140mg Na per serving.
    case lowSodium = "Low-Sodium"
}
