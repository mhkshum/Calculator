//
//  ViewController.swift
//  Calculator
//
//  Created by Megan Shum on 6/20/17.
//  Copyright © 2017 Mu^2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var previousNum:Double = 0.0; // the previous number in the equation
    var displayNum:Double = 0.0; // the number that needs to be calculated (not a string so we can do calculations)
    var doMath = false;
    @IBOutlet weak var label: UILabel! // the number that will be displayed on the screen
    
    // function that will create the number the user wants to use in calculations
    @IBAction func number(_ sender: UIButton) {
        
        if doMath == true{
            label.text = String(sender.tag)
            displayNum = Double(label.text!)!
            doMath = true;
            
        }
        
        label.text = label.text! + String(sender.tag)
        displayNum = Double(label.text!)!
    }
    
    // function for the other buttons that help execute the calculations/delete/cancel
    @IBAction func buttons(_ sender: UIButton) {
        if label.text != "" && sender.tag != 12 && sender.tag != 14{
            
            previousNum = Double(label.text!)!
            
            if sender.tag == 15 { // plus
                label.text = "+";
            }
            
            else if sender.tag == 16 { // minus
            }
            
            else if sender.tag == 17  { // multiply
            }
            else if sender.tag == 18  { //divide
                
            }
            
            doMath = true; // after a math button is clicked, perform the calculation
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

