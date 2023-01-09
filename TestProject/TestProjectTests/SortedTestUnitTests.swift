//
//  SortedTestUnitTests.swift
//  TestProjectTests
//
//  Created by BKS-GGS on 09/01/23.
//

import XCTest
@testable import TestProject

final class SortedTestUnitTests: XCTestCase {
    var sortedSet: SortedSet? = nil
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sortedSet = SortedSet()
        sortedSet?.originalArray = [1,2,3,4,5,6]
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        self.sortedSet = nil
    }
    
    func testAddElementsToAnArray() throws {
        sortedSet?.addElementsToAnArray([10,20,30,40])
        XCTAssert(sortedSet?.originalArray.count == 10)
    }
    
    func testAddElement() throws {
        sortedSet?.addElement(8)
        XCTAssert(sortedSet?.originalArray.count == 7)
    }
    
    func testMaxVal() throws {
        let maxVal = sortedSet?.maxVal()
        XCTAssert(maxVal == 6)
        
        sortedSet?.deleteAll()
        let maxVal2 = sortedSet?.maxVal()
        XCTAssertEqual(maxVal2, nil)
    }
    
    func testMinVal() throws {
        let minVal = sortedSet?.minVal()
        XCTAssert(minVal == 1)
        
        sortedSet?.deleteAll()
        let minVal2 = sortedSet?.minVal()
        XCTAssertEqual(minVal2, nil)
    }
    
    func testDeleteItemFromIndex() throws {
        guard let count = self.sortedSet?.originalArray.count else { return }
        sortedSet?.deleteItemFromIndex(1)
        XCTAssert(sortedSet?.originalArray.count == (count - 1))
    }
    
    func testisExist() throws {
        if let result = self.sortedSet?.isExist(6) {
            XCTAssertTrue(result)
        }
        self.sortedSet?.deleteItemFromIndex(3)
        if let resultFail = self.sortedSet?.isExist(4) {
            XCTAssertFalse(resultFail)
        }
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
