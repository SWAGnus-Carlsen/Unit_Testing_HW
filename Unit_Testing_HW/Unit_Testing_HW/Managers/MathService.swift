//
//  MathService.swift
//  Unit_Testing_HW
//
//  Created by Vitaliy Halai on 6.03.23.
//

import UIKit


class MathService {
    
    private(set) var intResult: Int = -999
    
    private(set) var doubleResult: Double = -999
    
    func sum(x: Int, y: Int) {
        intResult = x + y
    }
    
    func multiplication(x: Int, y: Int) {
        intResult = x * y
    }
    
    func division(x: Double, y: Double) {
        guard y != 0 else {
            print("u can't divide by zero")
            return
        }
        doubleResult = x / y
    }
  
}

