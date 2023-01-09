//
//  SortedSet.swift
//  TestProject
//
//  Created by BKS-GGS on 09/01/23.
//

import Foundation

struct SortedSet {
    var originalArray: [Int] = []
    
    mutating func addElement(_ item : Int) {
        if !isExist(item) {
            originalArray.append(item)
        }
        originalArray.sort()
    }
    
    mutating func addElementsToAnArray(_ array : [Int]) {
        for item in array {
            self.addElement(item)
        }
        originalArray.sort()
    }
    
    func maxVal() -> Int? {
        if !self.originalArray.isEmpty {
            return originalArray.max()
        }
        return nil
    }
    
    func minVal() -> Int? {
        if !self.originalArray.isEmpty {
            return originalArray.min()
        }
        return nil
    }
    
    mutating  func deleteItemFromIndex(_ index: Int) {
        if self.originalArray.count > index {
            originalArray.remove(at: index)
        }
    }
    
    func isExist(_ item: Int) -> Bool {
        return originalArray.contains(item)
    }
    
    mutating func deleteAll() {
        self.originalArray.removeAll()
    }
}
