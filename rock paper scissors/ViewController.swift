//
//  ViewController.swift
//  rock paper scissors
//
//  Created by Owner on 2/13/20.
//  Copyright © 2020 Bone Octopus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var outcome: UILabel!
     @IBOutlet weak var playerLabel: UILabel!
        @IBOutlet weak var sliderOutlet: UISlider!
    var emojiName = " "
    
    @IBAction func sliderSlid(_ sender: UISlider) {
        switch sender.value {
        case 0...1 : playerLabel.text = "🤜"; emojiName = "rock"
        case 1.01...2 : playerLabel.text = "✋"; emojiName = "paper"
        case 2.01...3 : playerLabel.text = "✌️"; emojiName = "scissors"
        default:
            " "
        }
    }
    @IBOutlet weak var opponentLabel: UILabel!
    
    let choices = ["✌️", "✋", "🤜"]
   // let randomChoice = choices.randomElement()!
    @IBOutlet weak var score: UILabel!
     
    
       @IBOutlet weak var oScore: UILabel!
    lazy var scoreInt:Int = Int(score.text!) ?? 0
        lazy var oScoreInt:Int = Int(oScore.text!) ?? 0
    
    @IBAction func submit(_ sender: UIButton) {
        opponentLabel.text = choices.randomElement()!
    
        
     if emojiName == "paper" && opponentLabel.text == "✌️" {
        outcome.text = "You lost!"; oScoreInt += 1; oScore.text = String(oScoreInt)
     }
        else if emojiName == "paper" && opponentLabel.text == "✋" {
                outcome.text = "You tied!"
     }
        else if emojiName == "paper" && opponentLabel.text == "🤜" {
        outcome.text = "You won!"; scoreInt += 1; score.text = String(scoreInt)
     }
        else if emojiName == "rock" && opponentLabel.text == "🤜" {
                outcome.text = "You tied!"
     }
        else if emojiName == "rock" && opponentLabel.text == "✋" {
        outcome.text = "You lost!"; oScoreInt += 1; oScore.text = String(oScoreInt)
     }
        else if emojiName == "rock" && opponentLabel.text == "✌️" {
        outcome.text = "You won!"; scoreInt += 1; score.text = String(scoreInt)
     }
        else if emojiName == "scissors" && opponentLabel.text == "✌️" {
                outcome.text = "You tied!"
     }
        else if emojiName == "scissors" && opponentLabel.text == "✋" {
        outcome.text = "You won!"; scoreInt += 1; score.text = String(scoreInt)
     }
        else if emojiName == "scissors" && opponentLabel.text == "🤜"{
        outcome.text = "You lost!"; oScoreInt += 1; oScore.text = String(oScoreInt)
     }
        
        
    }
  
     
    

        
        

  /*  if outcome.text == "You won!" {
        scoreInt += 1
    }
    else if outcome.text == "You lost!" {
        oScoreInt += 1
    }
}
    */
    
}

    


