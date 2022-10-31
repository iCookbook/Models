//
//  Digest.swift
//  Models
//
//  Created by Егор Бадмаев on 26.10.2022.
//

public struct Digest: Codable {
    public let label, tag: String?
    public let schemaOrgTag: String?
    public let total: Double?
    public let hasRDI: Bool?
    public let daily: Double?
}
