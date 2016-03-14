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
    @IBOutlet weak var inputTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func zeroButton_TouchUpInside(sender: AnyObject) {
        let number = sender.currentTitle
        
        if isTypingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + number!!
          //  calculatorDisplay.text = calculatorDisplay.text + number
        } else {
            calculatorDisplay.text = number
            isTypingNumber = true
        }
    }

    @IBAction func operatorButton_touchUpinside(sender: AnyObject) {
        isTypingNumber = false
        firstNumber = Int(calculatorDisplay.text!)!
        operation = sender.currentTitle!!
    }
    
    @IBAction func equalButton_TouchUpInside(sender: AnyObject) {
        isTypingNumber = false
        var result = 0
        secondNumber = Int(calculatorDisplay.text!)!
        
        if operation == "+" {
            result = firstNumber + secondNumber
        } else if operation == "-" {
            result = firstNumber - secondNumber
        }
        
        calculatorDisplay.text = "\(result)"
    }
}

