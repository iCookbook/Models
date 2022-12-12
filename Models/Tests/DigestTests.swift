//
//  DigestTests.swift
//  Models
//
//  Created by Егор Бадмаев on 12.12.2022.
//

import XCTest
@testable import Models

class DigestTests: XCTestCase {
    
    var digest: Digest!
    
    private let testLabel = "Label"
    private let testTotal = 100.0
    
    override func tearDownWithError() throws {
        digest = nil
        try super.tearDownWithError()
    }
    
    func testSimpleInit() throws {
        digest = Digest(label: testLabel, total: testTotal)
        
        XCTAssertNotNil(digest.label)
        XCTAssertNotNil(digest.total)
        
        XCTAssertNil(digest.tag)
        XCTAssertNil(digest.schemaOrgTag)
        XCTAssertNil(digest.hasRDI)
        XCTAssertNil(digest.daily)
    }
    
    func testFullInit() throws {
        digest = Digest(label: testLabel, tag: "Tag", schemaOrgTag: "schemaOrgTag", total: testTotal, hasRDI: true, daily: 100.0)
        
        XCTAssertNotNil(digest.label)
        XCTAssertNotNil(digest.total)
        
        XCTAssertNotNil(digest.tag)
        XCTAssertNotNil(digest.schemaOrgTag)
        XCTAssertNotNil(digest.hasRDI)
        XCTAssertNotNil(digest.daily)
    }
}
