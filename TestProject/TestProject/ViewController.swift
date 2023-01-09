//
//  ViewController.swift
//  TestProject
//
//  Created by BKS-GGS on 09/01/23.
//

import UIKit

class ViewController: UIViewController {

    let calculator = Calculator()
    let sortedSet = SortedSet()
    var array = [1,2,3]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let sumResult = calculator.add(n1: 10, n2: 2)
        let subResult = calculator.subract(n1: 10, n2: 2)
        let multiplyResult = calculator.multiply(n1: 10, n2: 2)
        let divResult = calculator.division(n1: 10, n2: 2)
    }
    }

