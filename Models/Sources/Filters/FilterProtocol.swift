//
//  FilterProtocol.swift
//  Models
//
//  Created by Егор Бадмаев on 26.12.2022.
//

public protocol FilterProtocol {
    /// String version of this enum to display in `Search.FilterViewController`.
    var description: String { get }
    /// Emoji representation for cases of this enum.
    var emoji: String? { get }
}
