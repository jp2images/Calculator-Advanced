//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    /// This variable is used to check if the user has finished typing the number
    private var isFinsihedTypingNumber: Bool = true
    
    /// What should happen when a non-number button is pressed
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinsihedTypingNumber = true
        
        /// This will crash with a usable error message if the text cannot be converted to a Double
        guard let number = Double(displayLabel.text!) else {
            fatalError("Cannot convert display label text to a Double")
        }
        
        if let calcMethod = sender.currentTitle{
            
            switch calcMethod {
                case "AC":
                    displayLabel.text = "0"
                    
                case "+/-":
                    displayLabel.text = String(number * -1)
                    
                case "%":
                    displayLabel.text = String(number / 100)
                    
                default:
                    break
            }
        }
            
    }
    
    /// What should happen when a number is entered into the keypad
    @IBAction func numButtonPressed(_ sender: UIButton) {
        if let numValue = sender.currentTitle {
            if isFinsihedTypingNumber {
                displayLabel.text = numValue
                isFinsihedTypingNumber = false
            } else {
                
                if numValue == "." {
                    guard !displayLabel.text!.contains(".") else {
                        fatalError(
                            "Cannot have multiple decimal points in a number"
                        )
                    }
                    
                    let isInt floor(Double(displayLabel.text!)) == Double(displayLabel.text!)
                    
                }
                displayLabel.text! += numValue
            }
        }
    }
    
    
    
}

