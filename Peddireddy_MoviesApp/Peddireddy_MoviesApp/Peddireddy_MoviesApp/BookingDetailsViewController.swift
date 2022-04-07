//
//  BookingDetailsViewController.swift
//  Peddireddy_MoviesApp
//
//  Created by student on 4/7/22.
//

import UIKit

class BookingDetailsViewController: UIViewController {
    
    var lone = ""
    var ltwo = ""
    var lthree = ""
    var lfour = ""
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        labelOne.text = labelOne.text! + lone
        labelTwo.text = labelTwo.text! + ltwo
        labelThree.text = labelThree.text! + lthree
        labelFour.text = labelFour.text! + lfour
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
