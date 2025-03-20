//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Jeff Patterson on 3/14/25.
//  Copyright © 2025 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    private var number: Double?
    
    /// Make this tuple an optional by appending the ? to the end of the entire type.
    private var intermediateCalculation: (n1: Double, calcMethod: String)?
   
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
        
    mutating func calculate(symbol: String) -> Double? {
        if let n = number {
            if symbol == "AC" {
                return 0
            } else if symbol == "+/-"{
                return n * -1
            } else if symbol == "%" {
                return n * 0.01
            } else if symbol == "=" {
                return performTwoNumberCalculation(n2: n)
            } else {
                intermediateCalculation = (n1: n, calcMethod: symbol)
            }
        }
        return nil
    }
    
    private func performTwoNumberCalculation(n2: Double) -> Double? {
        if let num1 = intermediateCalculation?.n1,
           let operation = intermediateCalculation?.calcMethod {
            
            switch operation {
                case "+":
                    return num1 + n2
                case "-":
                    return num1 - n2
                case "×":
                    return num1 * n2
                case "÷" :
                    return num1 / n2
                default :
                    fatalError("The operation \(operation) is not supported")
            }
        }
        return nil
        
    }
    
}
