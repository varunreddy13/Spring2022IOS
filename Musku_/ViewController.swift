//
//  ViewController.swift
//  Musku_
//
//  Created by Musku,Varun Reddy on 1/26/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    @IBOutlet weak var detailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        var fname = firstNameTextField.text!
        var lname =  lastNameTextField.text!
        
        detailsLabel.text = "Details"
        
        fullNameLabel.text = "Full Name:\(lname),\(fname)"
        
        var initials = firstNameTextField.text![firstNameTextField.text!.startIndex].uppercased() + lastNameTextField.text![lastNameTextField.text!.startIndex].uppercased()
        
        initialsLabel.text = "Initials : \(initials)"
        
        
        
    }
    
    
    @IBAction func onClickOfReset(_ sender: UIButton) {
        
        firstNameTextField.text = ""
        lastNameTextField.text = ""
        fullNameLabel.text = ""
        initialsLabel.text = ""
        detailsLabel.text = ""
        
        firstNameTextField.becomeFirstResponder()
        
        
        
    }
    
    
}

