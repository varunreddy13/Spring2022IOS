//
//  ResultViewController.swift
//  DiscountMultiVC
//
//  Created by Musku,Varun Reddy on 3/22/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var enteredamountOutlet: UILabel!
    
    @IBOutlet weak var enteredDIscRateOutlet: UILabel!
    
    
    @IBOutlet weak var priceAfterDiscountOutlet: UILabel!
    
    var amount = ""
    var disRate = ""
    var priceAfterDiscount = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        enteredamountOutlet.text = enteredamountOutlet.text! + amount
        enteredDIscRateOutlet.text = enteredDIscRateOutlet.text! + disRate
        priceAfterDiscountOutlet.text = priceAfterDiscountOutlet.text! + priceAfterDiscount
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
