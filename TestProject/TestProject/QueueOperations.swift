//
//  QueueOperations.swift
//  TestProject
//
//  Created by BKS-GGS on 09/01/23.
//

import Foundation

struct QueueOperations {
    
    var queueList: [Int] = []
    mutating func pushItem(_ item : Int) {
        self.queueList.append(item)
    }
    
    mutating func popItem() {
        if !self.queueList.isEmpty {
            self.queueList.removeFirst()
        }
    }
    
    func front() -> Int? {
        if !self.queueList.isEmpty {
            return self.queueList.first
        }
        return nil
    }
    
    func rear() -> Int? {
        if !self.queueList.isEmpty {
            return self.queueList.last
        }
        return nil
    }
}
