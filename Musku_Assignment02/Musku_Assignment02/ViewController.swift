//
//  ViewController.swift
//  Musku_Assignment02
//
//  Created by Musku,Varun Reddy on 1/31/22.
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
    
    
    @IBAction func ClickOfSubmit(_ sender: UIButton) {
        
        var fName = firstNameTextField.text!
        var lName =  lastNameTextField.text!
        
        fullNameLabel.text = "Full Name : \(lName),\(fName)"
        
        var initials = fName[fName.startIndex].uppercased() + lName[lName.startIndex].uppercased()
        
        initialsLabel.text = " Initials : \(initials)"
        detailsLabel.text = " Details"
        
    }
    
    @IBAction func ClickOfReset(_ sender: UIButton) {
        
        firstNameTextField.text = " "
        lastNameTextField.text = " "
        fullNameLabel.text = " "
        initialsLabel.text = " "
        detailsLabel.text = " "
        
        firstNameTextField.becomeFirstResponder()
    }
    
}

