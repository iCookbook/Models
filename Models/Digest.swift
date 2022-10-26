//
//  Digest.swift
//  Models
//
//  Created by Егор Бадмаев on 26.10.2022.
//

struct Digest: Codable {
    let label, tag: String?
    let schemaOrgTag: String?
    let total: Double?
    let hasRDI: Bool?
    let daily: Double?
    let unit: Unit?
    let sub: [Digest]?
}
