//
//  QueueOperationUnitTest.swift
//  TestProjectTests
//
//  Created by BKS-GGS on 09/01/23.
//

@testable import TestProject
import XCTest

final class QueueOperationUnitTest: XCTestCase {
    var queueOperations: QueueOperations? = nil
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        queueOperations = QueueOperations()
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        self.queueOperations = nil
    }
    
    func testPushItem() throws {
        queueOperations?.pushItem(20)
        XCTAssert(queueOperations?.queueList.count == 1)
    }
    
    func testPopItems() throws {
        queueOperations?.pushItem(20)
        queueOperations?.pushItem(40)
        queueOperations?.pushItem(60)
        queueOperations?.pushItem(80)
        queueOperations?.popItem()
        XCTAssert(queueOperations?.queueList.count == 3)
    }
    
    func testFront() throws {
        let frontItem = queueOperations?.front()
        XCTAssertEqual(frontItem, nil)

        queueOperations?.pushItem(20)
        queueOperations?.pushItem(40)
        queueOperations?.pushItem(60)
        queueOperations?.pushItem(80)
        let frontItem2 = queueOperations?.front()
        XCTAssertEqual(frontItem2, 20)
    }
    
    func testRear() throws {
        let rearItem = queueOperations?.rear()
        XCTAssertEqual(rearItem, nil)
        
        queueOperations?.pushItem(20)
        queueOperations?.pushItem(40)
        queueOperations?.pushItem(60)
        queueOperations?.pushItem(80)
        let rearItem2 = queueOperations?.rear()
        XCTAssertEqual(rearItem2, 80)
    }
}
