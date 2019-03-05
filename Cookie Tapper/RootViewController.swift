//
//  RootViewController.swift
//  Cookie Tapper
//
//  Created by Naina  on 9/26/17.
//  Copyright © 2017 Codebase. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    @IBOutlet weak var tapGoalLabel: UILabel!
    @IBOutlet weak var tapCounterLabel: UILabel!
    var currentTapCount = 0
    let tapGoal = 10
    var isTapping = false
    var goalIsMet:Bool {
        return currentTapCount >= tapGoal}
    var tapOrTaps: String {
         if currentTapCount != 1{
            return "taps"
        } else {
            return "Tap"
            }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tapGoalLabel.text = " Goal: \(tapGoal)"
        updateTapCountLable()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onCookieTapped(_ sender: Any) {
        if !goalIsMet {
            isTapping = true
            incrementTapCount()
            updateTapCountLable()
        }
        
    }
    func incrementTapCount() {
        currentTapCount += 1
        if goalIsMet {
            isTapping = false
        }
        
    }
    func updateTapCountLable() {
        
        
            if isTapping  {
                tapCounterLabel.textColor = UIColor.blue
            }
                else {
                     tapCounterLabel.textColor = UIColor.black
                }
            
        tapCounterLabel.text = " \(currentTapCount) " + tapOrTaps
        }
}

