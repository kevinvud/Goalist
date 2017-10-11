//
//  FinishGoalVC.swift
//  Goalist
//
//  Created by PoGo on 10/10/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var createGoalButton: UIButton!
    @IBOutlet weak var pointTextField: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType){
        self.goalDescription = description
        self.goalType = type
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalButton.bindToKeyboard()
        pointTextField.delegate = self
    }
        
    @IBAction func createGoalButtonPressed(_ sender: Any) {
        
    }
    @IBAction func backButtonPressed(_ sender: Any) {
        dismissDetail()
        //dismiss(animated: true, completion: nil)
    }
    
}
