//
//  StudentViewController.swift
//  StudentApp
//
//  Created by Musku,Varun Reddy on 3/24/22.
//

import UIKit

class StudentViewController: UIViewController {
    
    
    @IBOutlet weak var sidOutlet: UILabel!
    
    @IBOutlet weak var emailOutlet: UILabel!
    
    
    @IBOutlet weak var nameOutlet: UILabel!
    
    
    @IBOutlet weak var courseOutlet: UIButton!
    
    //variable created to hold the Student object we recieve from the LoginController
        var studentObj = Student()
        
        var guestUser:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if guestUser {
                    //if the user is guest we will hide all the outlets and display 'Guest User'
                    emailOutlet.isHidden = true
                    nameOutlet.text = "Name: Guest User"
                    sidOutlet.isHidden = true
                    courseOutlet.isHidden = true
                    
                }else{
                    
                    //If the student is found, then we assign the values of the studentObj to the outelts
                    sidOutlet.text = "SID: " + studentObj.sid
                    emailOutlet.text = "Email: " + studentObj.email
                    nameOutlet.text = "Name: " + studentObj.name
                }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "CourseSegue" {
                    let destination = segue.destination as! CoursesInfo
                    
                    //we will assign the courses to 'courseArray' in the CourseViewController
                    destination.coursesArray = studentObj.courses
                }
        
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
