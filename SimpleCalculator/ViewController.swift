//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by user on 16.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    
    var numberFromScreen: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
    }


    @IBAction func digitPressed(_ sender: UIButton) {
        
        resultLabel.text = resultLabel.text! + String(sender.tag)
        numberFromScreen = Double(resultLabel.text!)!
    }
    
    @IBAction func controlPressed(_ sender: UIButton) {
        
    }
    
    
    
}

