//
//  StepDataTests.swift
//  Models-Unit-Tests
//
//  Created by Егор Бадмаев on 07.01.2023.
//

import XCTest
@testable import Models

class StepDataTests: XCTestCase {
    
    var stepData: StepData!
    
    override func setUpWithError() throws {
        
    }
    
    override func tearDownWithError() throws {
        stepData = nil
    }
    
    func testInitWithoutImageData() throws {
        let text = "Test"
        stepData = StepData(text: text)
        
        XCTAssertEqual(stepData.text, text)
        XCTAssertNil(stepData.imageData)
    }
    
    func testInitWithImageData() throws {
        let text = "Test"
        let data = Data()
        stepData = StepData(text: text, imageData: data)
        
        XCTAssertEqual(stepData.text, text)
        XCTAssertEqual(stepData.imageData, data)
    }
}
