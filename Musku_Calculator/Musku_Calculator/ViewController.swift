//
//  ViewController.swift
//  Musku_Calculator
//
//  Created by Musku,Varun Reddy on 2/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    var total1 = 0.0
    var total2 = 0.0
    var result = 0.0
    var oper = "+"
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ButtonAC(_ sender: Any) {
        clearText()
    }
    @IBAction func ButtonC(_ sender: Any) {
        displayLabel.text = ""
    }
    @IBAction func ButtonModule(_ sender: Any) {
        oper = "%"
        total1 = Double(displayLabel.text!)!
        clearText()

    }
    @IBAction func ButtonMultiply(_ sender: Any) {
        oper = "*"
        total1 = Double(displayLabel.text!)!
        clearText()

    }
    @IBAction func ButtonPlus(_ sender: Any) {
        oper = "+"
        total1 = Double(displayLabel.text!)!
        clearText()

        
    }
    @IBAction func ButtonMinus(_ sender: Any) {
        if(displayLabel.text == ""){
            displayLabel.text = displayLabel.text! + "-"
        }
        else {
            oper = "-"
            total1 = Double(displayLabel.text!)!
            clearText()
        }

    }
    @IBAction func Buttondivision(_ sender: Any) {
        oper = "/"
        total1 = Double(displayLabel.text!)!
        clearText()

    }
    @IBAction func Button9(_ sender: Any) {
        valueConvertion(v:"9")
    }
    @IBAction func Button8(_ sender: Any) {
        valueConvertion(v:"8")
    }
    @IBAction func Button7(_ sender: Any) {
        valueConvertion(v:"7")
    }
    @IBAction func Button6(_ sender: Any) {
        valueConvertion(v:"6")
    }
    @IBAction func Button5(_ sender: Any) {
        valueConvertion(v:"5")
    }
    @IBAction func Button4(_ sender: Any) {
        valueConvertion(v:"4")
    }
    @IBAction func Button3(_ sender: Any) {
        valueConvertion(v:"3")
    }
    @IBAction func Button2(_ sender: Any) {
        valueConvertion(v:"2")
    }
    @IBAction func Button1(_ sender: Any) {
        valueConvertion(v:"1")
    }
    @IBAction func Button0(_ sender: Any) {
        valueConvertion(v:"0")
    }
    @IBAction func ButtonDot(_ sender: Any) {
        displayLabel.text = displayLabel.text! + "."
    }
    @IBAction func ButtonEquals(_ sender: Any) {
        total2 = Double(displayLabel.text!)!
        
        switch oper {
        case "+":
            result = total1+total2
            roundValue(r:result)
        case "-":
            result = total1-total2
            roundValue(r:result)
        case "*":
            result = total1*total2
            roundValue(r:result)
        case "/":
            if(total2 == 0)
            {
                displayLabel.text = "Error"
            }
            else{
                result = Double(total1/total2)
                roundValue(r:round(result * 100000) / 100000.0)
            }
        case "%":
            result =  total1.truncatingRemainder(dividingBy: total2)
            roundValue(r:round(result * 100) / 100.0)
        default:
            displayLabel.text = "ERROR"
        }
    }
    
    func clearText(){
        displayLabel.text = ""
    }
    func roundValue(r: Double){
        if(r.truncatingRemainder(dividingBy: 1) == 0.0){
            displayLabel.text = String(Int(r))
        }
        else{
            displayLabel.text = String(r)
        }
    }
    func valueConvertion(v: String)
    {
        if(displayLabel.text! == "0")
        {
            displayLabel.text =  v
        }
        else{
            displayLabel.text = displayLabel.text! + v
        }
    }
}





