//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by user on 16.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var deleteLabel: UIButton!
    
    
    private var numberFromScreen: Double = 0
    private var firstValue: Double = 0
    private var mathSing: Bool = false
    private var operation: Int = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
        
    }
    
    
    @IBAction func digitPressed(_ sender: UIButton) {
       
        if mathSing == true {
            resultLabel.text = String(sender.tag)
            mathSing = false
        } else {
            resultLabel.text = resultLabel.text! + String(sender.tag)
        }
        
        numberFromScreen = Double(resultLabel.text!)!
    }
    
    @IBAction func controlPressed(_ sender: UIButton) {
        if resultLabel.text != "" && sender.tag != 15 && sender.tag != 10  {
            firstValue = Double(resultLabel.text!)!
            
            if sender.tag == 11 { //division
                resultLabel.text = "/"
            } else if sender.tag == 12 { //multiply
                resultLabel.text = "x"
            } else if sender.tag == 13 { //plus
                resultLabel.text = "+"
            } else if sender.tag == 14 { // minus
                resultLabel.text = "-"
            }
            
            operation = sender.tag
            
            
            mathSing = true
        }
        else if sender.tag == 15 {
            if operation == 11 {
                resultLabel.text = String(firstValue / numberFromScreen)
            } else if operation == 12 {
                resultLabel.text = String(firstValue * numberFromScreen)
            } else if operation == 13 {
                resultLabel.text = String(firstValue + numberFromScreen)
            } else if operation == 14 {
                resultLabel.text = String(firstValue - numberFromScreen)
            }
            
            
        }
        else if sender.tag == 10 {
            resultLabel.text = ""
            firstValue = 0
            numberFromScreen = 0
            operation = 0
        }
    }
}


extension ViewController {
    
}
