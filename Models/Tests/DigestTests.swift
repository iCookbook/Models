//
//  DigestTests.swift
//  Models
//
//  Created by Егор Бадмаев on 12.12.2022.
//

import XCTest
@testable import Models

class DigestTests: XCTestCase {
    
    /// SUT
    var digest: Digest!
    
    private let testLabel = "Label"
    private let testTotal = 100.0
    
    override func tearDownWithError() throws {
        digest = nil
    }
    
    /// Testing simple init that is being used in `NutrientsCollectionViewDataSource` where we need to provide only 2 properties.
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
    
    // MARK: - Codable tests
    
    func test_decodeDigest_array() throws {
        let result = try JSONDecoder().decode([Digest].self, from: digest1)
        XCTAssertEqual(result[0].label, "Fat")
        XCTAssertEqual(result[0].tag, "FAT")
        XCTAssertEqual(result[0].schemaOrgTag, "fatContent")
        XCTAssertEqual(result[0].total, 12.843255294562502)
        XCTAssertEqual(result[0].hasRDI, true)
        XCTAssertEqual(result[0].daily, 19.758854299326927)
    }
    
    func test_decodeDigest_arrayWithError() throws {
        let result = try JSONDecoder().decode([Digest].self, from: digest2)
        
        XCTAssertEqual(result[0].label, "Fat")
        XCTAssertEqual(result[1].label, "Carbs")
        XCTAssertNil(result[0].tag)
        XCTAssertNil(result[0].schemaOrgTag)
        XCTAssertNil(result[0].total)
        XCTAssertNil(result[0].hasRDI)
        XCTAssertNil(result[0].daily)
    }
}

/// Array of `Digest`s.
private let digest1 = Data("""
[
  {
    "label": "Fat",
    "tag": "FAT",
    "schemaOrgTag": "fatContent",
    "total": 12.843255294562502,
    "hasRDI": true,
    "daily": 19.758854299326927,
    "unit": "g"
  },
  {
    "label": "Carbs",
    "tag": "CHOCDF",
    "schemaOrgTag": "carbohydrateContent",
    "total": 5.840632371937501,
    "hasRDI": true,
    "daily": 1.9468774573125003,
    "unit": "g"
  }
]
""".utf8)

/// Array of `Digest`s w/o some data.
private let digest2 = Data("""
[
  {
    "label": "Fat"
  },
  {
    "label": "Carbs"
  }
]
""".utf8)
