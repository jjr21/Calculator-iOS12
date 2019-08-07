//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
     private var statusButton: Bool = true
    private var numberValue: String = ""
    
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        statusButton = true
        numberValue = " "
        guard let number = Double(displayLabel.text!) else{
            fatalError("ERROR, cannot convert to double, ERROR")
        }
        
      
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
        if let numValue = sender.currentTitle {
            if (statusButton == true){
                numberValue =  numValue
                displayLabel.text = numberValue
                statusButton = false
            }
            else{
                numberValue = numValue
                displayLabel.text = displayLabel.text! + numberValue
            }
        }
    }

}

