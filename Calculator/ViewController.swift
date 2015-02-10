//
//  ViewController.swift
//  Calculator
//
//  Created by Jean-Francois Leblanc on 2015-02-09.
//  Copyright (c) 2015 Jean-Francois Leblanc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingNumber : Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
    
        let digit = sender.currentTitle!
        
        println("digit = \(digit)")
        
        if (userIsInTheMiddleOfTypingNumber) {
            
            display.text = display.text! + digit
        }
        else {
            
            display.text = digit
            userIsInTheMiddleOfTypingNumber = true;
        }
        
        
    }
}

