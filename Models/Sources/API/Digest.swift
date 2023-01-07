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
    
    // MARK: - Init
    
    public init(label: String?, tag: String? = nil, schemaOrgTag: String? = nil, total: Double?, hasRDI: Bool? = nil, daily: Double? = nil) {
        self.label = label
        self.tag = tag
        self.schemaOrgTag = schemaOrgTag
        self.total = total
        self.hasRDI = hasRDI
        self.daily = daily
    }
}
