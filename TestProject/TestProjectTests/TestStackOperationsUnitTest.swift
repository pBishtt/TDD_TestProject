//
//  TestStackOperationsUnitTest.swift
//  TestProjectTests
//
//  Created by BKS-GGS on 09/01/23.
//

@testable import TestProject
import XCTest

final class TestStackOperationsUnitTest: XCTestCase {
    var stackOperations: StackOperations? = nil
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        stackOperations = StackOperations()
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        self.stackOperations = nil
    }
    
    func testPushItem() throws {
        stackOperations?.pushItem(20)
        XCTAssert(stackOperations?.stackList.count == 1)
    }
    
    func testPopItems() throws {
        stackOperations?.pushItem(20)
        stackOperations?.pushItem(40)
        stackOperations?.pushItem(60)
        stackOperations?.pushItem(80)
        stackOperations?.popItem()
        XCTAssert(stackOperations?.stackList.count == 3)
    }
    
    func testPeek() throws {
        let peekItem = stackOperations?.peek()
        XCTAssertEqual(peekItem, nil)

        stackOperations?.pushItem(20)
        stackOperations?.pushItem(40)
        stackOperations?.pushItem(60)
        stackOperations?.pushItem(80)
        let peekItem2 = stackOperations?.peek()
        XCTAssertEqual(peekItem2, 80)
    }
}
