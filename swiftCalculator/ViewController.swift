//
//  ViewController.swift
//  swiftCalculator
//
//  Created by rohit FNU on 3/14/16.
//  Copyright © 2016 rohit FNU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isTypingNumber = false
    var firstNumber = 0
    var secondNumber = 0
    var operation = ""
    
    @IBOutlet weak var calculatorDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // bsically functionality for all the number pad (0-9)
    @IBAction func zeroButton_TouchUpInside(sender: AnyObject)
    {
        let number = sender.currentTitle
        
        if isTypingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + number!!
        } else {
            calculatorDisplay.text = number
            isTypingNumber = true
        }
    }
    
    //functionality for operators
    @IBAction func operatorButton_touchUpinside(sender: AnyObject)
    {
        isTypingNumber = false
        firstNumber = Int(calculatorDisplay.text!)!
        operation = sender.currentTitle!!
    }
    
    @IBAction func clearButton_TouchUpInside(sender: AnyObject)
    {
        calculatorDisplay.text = ""
    }
    //calculations once equal is pressed
    @IBAction func equalButton_TouchUpInside(sender: AnyObject)
    {
        isTypingNumber = false
        var result = 0
        secondNumber = Int(calculatorDisplay.text!)!
        
        if operation == "+" {
            result = firstNumber + secondNumber
        } else if operation == "-" {
            result = firstNumber - secondNumber
        }
        else if operation == "/" {
            result = firstNumber / secondNumber
        }
        else if operation == "*" {
            result = firstNumber * secondNumber
        }
        
        calculatorDisplay.text = "\(result)"
    }
}

