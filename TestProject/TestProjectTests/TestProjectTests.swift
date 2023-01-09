//
//  TestProjectTests.swift
//  TestProjectTests
//
//  Created by BKS-GGS on 09/01/23.
//

import XCTest
@testable import TestProject

final class TestProjectTests: XCTestCase {
    var calculator: Calculator? = nil

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        calculator = Calculator()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        calculator = nil
    }

    func testAdd() throws {
        let result = calculator?.add(n1: 10, n2: 2)
        XCTAssertTrue(result == 12)
        
        let result2 = calculator?.add(n1: nil, n2: nil)
        XCTAssertTrue(result2 == result2)
    }
    
    func testSUm() throws {
        let result = calculator?.subract(n1: 10, n2: 2)
        XCTAssertTrue(result == 8)
        
        let result2 = calculator?.subract(n1: nil, n2: nil)
        XCTAssertTrue(result2 == nil)
    }
    
    func testMultiply() throws {
        let result = calculator?.multiply(n1: 10, n2: 2)
        XCTAssertTrue(result == 20)

        let result2 = calculator?.multiply(n1: nil, n2: nil)
        XCTAssertTrue(result2 == nil)
    }
    
    func testDiv() throws {
        let result = calculator?.division(n1: 10, n2: 2)
        XCTAssertTrue(result == 5)

        let result2 = calculator?.division(n1: nil, n2: nil)
        XCTAssertTrue(result2 == nil)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
