//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Jeff Patterson on 3/14/25.
//  Copyright © 2025 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    var number: Double
    
    init(number: Double) {
        self.number = number
    }
        
    func calculate(symbol: String) -> Double? {
        if symbol == "AC" {
            return 0
        } else if symbol == "+/-"{
            return number * -1
        } else if symbol == "%" {
                return number * 0.01
        }
        return nil
    }
}
