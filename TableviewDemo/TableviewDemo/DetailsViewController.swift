//
//  DetailsViewController.swift
//  TableviewDemo
//
//  Created by Musku,Varun Reddy on 3/29/22.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var DisplaylabelOutlet: UILabel!
    var product:Product?

    override func viewDidLoad() {
        super.viewDidLoad()
        DisplaylabelOutlet.text = "The product \((product?.productName)!) is of \((product?.productCategory)!) category"
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
