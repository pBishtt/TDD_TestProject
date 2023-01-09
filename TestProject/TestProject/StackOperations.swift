//
//  StackOperations.swift
//  TestProject
//
//  Created by BKS-GGS on 09/01/23.
//

import Foundation

struct StackOperations {
    
    var stackList: [Int] = []
    mutating func pushItem(_ item : Int) {
        self.stackList.append(item)
    }
    
    mutating func popItem() {
        if !self.stackList.isEmpty {
            self.stackList.removeLast()
        }
    }
    
    func peek() -> Int? {
        if !self.stackList.isEmpty {
            return self.stackList.last
        }
        return nil
    }
}
