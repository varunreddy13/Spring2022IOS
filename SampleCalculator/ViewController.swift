//
//  ViewController.swift
//  SampleCalculator
//
//  Created by Musku,Varun Reddy on 1/27/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ViewContrler: UILabel!
    var operand1 = -1.1;
    var operand2 = -1.1;
    var calcOperator = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Button6(_ sender: UIButton) {
        ViewContrler.text = ViewContrler.text! + "6"
        if operand1 == -1.1 {
            operand1 = 6
        }
        else{
            operand2 = 6
        }
    }
    
    
    @IBAction func Button9(_ sender: UIButton) {
        ViewContrler.text = ViewContrler.text! + "9"
        if operand2 == -1.1 {
            operand2 = 9
        }
        else{
            operand1 = 9
        }
    }
    
    
    
    
    @IBAction func ButtonPlus(_ sender: UIButton) {
        ViewContrler.text = ViewContrler.text! + "+"
        if calcOperator == "" {
            calcOperator = "+"
        }
        
    }
    
    @IBAction func ButtonEqual(_ sender: UIButton) {
        ViewContrler.text = ViewContrler.text! + "="
        
        if calcOperator == "+" {
            ViewContrler.text = ViewContrler.text! + "\(operand1+operand2)"
        }
        
    }
    
    
    @IBAction func Buttonrestart(_ sender: UIButton) {
        
        ViewContrler.text = " "
    }
}

