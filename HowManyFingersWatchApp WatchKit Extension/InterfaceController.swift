//
//  InterfaceController.swift
//  HowManyFingersWatchApp WatchKit Extension
//
//  Created by Rommel Rico on 3/23/15.
//  Copyright (c) 2015 Rommel Rico. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {
    @IBOutlet weak var mySlider: WKInterfaceSlider!
    @IBOutlet weak var userGuessLabel: WKInterfaceLabel!
    @IBOutlet weak var answerLabel: WKInterfaceLabel!
    var guessNumber:Int = 0
    
    @IBAction func guessUpdated(value: Float) {
        guessNumber = Int(value)
        userGuessLabel.setText("Your guess: \(guessNumber)")
    }
    
    @IBAction func doGuessAction() {
        var randomNumber = Int(arc4random_uniform(6))
        NSLog("Random number: \(randomNumber)")
        if (randomNumber == guessNumber) {
            answerLabel.setText("Yes!")
        } else {
            answerLabel.setText("Wrong!")
        }
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
}
