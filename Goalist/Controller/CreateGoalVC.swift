//
//  CreateGoalVC.swift
//  Goalist
//
//  Created by PoGo on 10/10/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {
    

    @IBOutlet weak var goalTextView: UITextView!
    
    @IBOutlet weak var shortTermButton: UIButton!
    
    @IBOutlet weak var longTermButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    var goalType: GoalType = .shortTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.bindToKeyboard()
        shortTermButton.setSelectedColor()
        longTermButton.setDeselectedColor()

    }
    

    @IBAction func shortTermPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermButton.setSelectedColor()
        longTermButton.setDeselectedColor()
    }
    

    @IBAction func longTermPressed(_ sender: Any) {
        goalType = .longTerm
        shortTermButton.setDeselectedColor()
        longTermButton.setSelectedColor()
        
    }

    @IBAction func nextButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismissDetail()
    }
    
}
