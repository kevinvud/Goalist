//
//  CreateGoalVC.swift
//  Goalist
//
//  Created by PoGo on 10/10/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController, UITextViewDelegate {
    

    @IBOutlet weak var goalTextView: UITextView!
    
    @IBOutlet weak var shortTermButton: UIButton!
    
    @IBOutlet weak var longTermButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    var goalType: GoalType = .shortTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.bindToKeyboard()
        shortTermButton.setGradientBackground(colorOne: Colors.colorOne, colorTwo: Colors.colorTwo)
        longTermButton.setGradientBackground(colorOne: Colors.colorThree, colorTwo: Colors.colorFour)
        goalTextView.delegate = self
        nextButton.setGradientBackground(colorOne: Colors.colorOne, colorTwo: Colors.colorTwo)
        nextButton.clipsToBounds = true
        longTermButton.clipsToBounds = true
        shortTermButton.clipsToBounds = true

        
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
        if goalTextView.text != "" && goalTextView.text != "What is your goal?"{
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC") as? FinishGoalVC else{return}
            finishGoalVC.initData(description: goalTextView.text!, type: goalType)
//            presentingViewController?.presentSecondaryDetail(finishGoalVC)
            presentDetail(finishGoalVC)
        }
        
        
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if goalTextView.text == "What is your goal?"{
            goalTextView.text = ""
        }
        goalTextView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        self.view.endEditing(true)
//    }
}

