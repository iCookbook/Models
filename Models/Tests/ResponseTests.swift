//
//  ResponseTests.swift
//  Models-Unit-Tests
//
//  Created by Егор Бадмаев on 07.01.2023.
//

import XCTest
@testable import Models

class ResponseTests: XCTestCase {
    
    var response: Response!
    
    override func setUpWithError() throws {
        
    }
    
    override func tearDownWithError() throws {
        response = nil
    }
    
    func test_decodingResponse_fullData() throws {
        XCTAssertNoThrow(try JSONDecoder().decode(Response.self, from: response1))
    }
    
    func test_decodingResponse_emptyResponse() throws {
        XCTAssertNoThrow(try JSONDecoder().decode(Response.self, from: response2))
    }
    
    func test_decodingResponse_nilResponse() throws {
        XCTAssertNoThrow(try JSONDecoder().decode(Response.self, from: response3))
    }
}

private let response1 = Data("""
{
  "from": 1,
  "to": 20,
  "count": 10000,
  "_links": {},
  "hits": [
    {
      "recipe": {
      },
      "_links": {
      }
    }
  ]
}
""".utf8)

/// Empty response.
private let response2 = Data("""
{"from":1,"to":0,"count":0,"_links":{},"hits":[]}
""".utf8)

/// Really empty response.
private let response3 = Data("""
{}
""".utf8)
