//
//  FinishGoalVC.swift
//  Goalist
//
//  Created by PoGo on 10/10/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import UIKit
import CoreData

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
        if pointTextField.text != ""{
            self.save { (complete) in
                if complete{
                    dismiss(animated: true, completion: nil)
                }
            }
        }
        
    }
    @IBAction func backButtonPressed(_ sender: Any) {
        dismissDetail()
        //dismiss(animated: true, completion: nil)
    }
    
    func save(completion: (_ finished: Bool) -> ()) {
        
        guard let managedContext = appDelegate?.persistentContainer.viewContext else {return}
        let goal = Goal(context: managedContext)
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointTextField.text!)!
        goal.goalProgress = Int32(0)
        
        do{
          try managedContext.save()
            print("saved")
            completion(true)
        } catch{
            debugPrint("Could not save: \(error.localizedDescription)")
            completion(false)
        }
      
        
        
        
    }
    
    
    
}
