//
//  Calculator.swift
//  TestProject
//
//  Created by BKS-GGS on 09/01/23.
//

import Foundation

struct Calculator {
    
    func add(n1: Int?, n2: Int?) -> Int? {
        guard let n1 = n1, let n2 = n2 else { return nil }
        return n1 + n2
    }
    
    func subract(n1: Int?, n2: Int?) -> Int? {
        guard let n1 = n1, let n2 = n2 else { return nil }
        return n1 - n2
    }
    
    func multiply(n1: Int?, n2: Int?) -> Int? {
        guard let n1 = n1, let n2 = n2 else { return nil }
        return n1 * n2
    }
    
    func division(n1: Int?, n2: Int?) -> Int? {
        guard let n1 = n1, let n2 = n2 else { return nil }
        return n1 / n2
    }
}
