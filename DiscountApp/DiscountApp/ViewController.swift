//
//  ViewController.swift
//  DiscountApp
//
//  Created by Musku,Varun Reddy on 2/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AmountField: UITextField!
    
    @IBOutlet weak var DiscountField: UITextField!
    
    
    @IBOutlet weak var DisplayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func SubmitButton(_ sender: UIButton) {
        
        var a = Double(AmountField.text!)!
        var b = Double(DiscountField.text!)!
        var c = Double(b/100)
        var d = Double(c*a)
        
        
        DisplayLabel.text = "Price after Discount is $\(a-d)"
    }
}

