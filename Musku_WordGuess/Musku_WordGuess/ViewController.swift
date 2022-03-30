//
//  ViewController.swift
//  Musku_WordGuess
//
//  Created by Musku,Varun Reddy on 3/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordsGuessedLabel: UILabel!
    @IBOutlet weak var wordsMissedLabel: UILabel!
    
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    @IBOutlet weak var totalWordsLabel: UILabel!
    
    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var guessLetterField: UITextField!
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var guessCountLabel: UILabel!
    
    
    @IBOutlet weak var guessletter: UIButton!
    
    @IBOutlet weak var playAgain: UIButton!
    
    var words = [["java", "Programming Language"],
               ["Tiger", "Animal"],
               ["Bike", "Two wheeler"],
                 ["Fruit","Apple"],["water","H20"],["heart","lubdub"]]
    
    
    var count = 0
    var word = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        wordsGuessedLabel.text! += int (count)
        
        playAgain.isHidden = true
        word = words[count][0]
        updateUnderscores()
        hintLabel.text = "Hint : " + words[count][1]
    }

    @IBAction func guessLetterButtonPressed(_ sender: Any) {
        
     
        
        if (userGuessLabel.text == word){
            
        }
    }
    
    @IBAction func playAgainButtonPressed(_ sender: Any) {
    }
    func updateUnderscores(){
        for letter in word{
            userGuessLabel.text! += "_ "
        }
    }
}

