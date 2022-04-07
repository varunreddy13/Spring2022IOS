//
//  ViewController.swift
//  Peddireddy_MoviesApp
//
//  Created by student on 4/7/22.
//

import UIKit

class MovieShowsViewController: UIViewController {
    
    
    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var prevButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var movieName: UILabel!
    
    @IBOutlet weak var ticketCost: UILabel!
    
    
    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var ticketCountOutlet: UITextField!
    var movie = ""
    var cost = ""
    var name = ""
    var ticketCount = ""
    var details = [["Avatar","12"],["No Time To Die","10"],["Shang Chi","15"],["Joker","20"]]
    var images = ["Avatar","No Time To Die","Shang Chi","Joker"]
    var ticket = "Movie Name: "
    var moviename = "Ticket Cost: "
    
    var imgNum = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI(imgNum)
        prevButton.isEnabled = false
    }
    
    @IBAction func previousButton(_ sender: UIButton) {
        nextButton.isEnabled = true
        imgNum -= 1
        updateUI(imgNum)
        if(imgNum == 0){
            prevButton.isEnabled = false
        }
    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        imgNum += 1
        updateUI(imgNum)
        //previous button should be enabled
        prevButton.isEnabled = true
        //once the user reach the end of array the next should be disbaled
        if(imgNum == images.count-1){
            nextButton.isEnabled = false
        }
        
    }
    
    
    @IBAction func bokkTicketButton(_ sender: Any) {
        movie = details[imgNum][0]
        cost = details[imgNum][1]
        name = nameOutlet.text!
        ticketCount = ticketCountOutlet.text!
        
    }
    
    func updateUI(_ imageNum:Int){
        var k = 0
        if(imageNum == -1)
        {
            k = 0
        }
        else{
            k = imageNum
        }
        imgNum = k
        displayImage.image = UIImage(named: details[k][0])
        movieName.text = moviename + details[k][0]
        ticketCost.text = ticket + details[k][1]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "moviesSegue"{
            var destination = segue.destination as! BookingDetailsViewController
            
            destination.lone = String(movie)
            destination.ltwo = String(cost)
            destination.lthree = String(name)
            destination.lfour = String(ticketCount)
            
            
            
        }
    }
    
}
