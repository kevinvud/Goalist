//
//  GoalCell.swift
//  Goalist
//
//  Created by PoGo on 10/10/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {
    
    @IBOutlet weak var goalDescriptionLabel: UILabel!
    
    @IBOutlet weak var goalTypeLabel: UILabel!
    
    @IBOutlet weak var goalProgessLabel: UILabel!
    
    @IBOutlet weak var completionVIew: UIView!
    
    func configureCell(goal: Goal){
        self.goalDescriptionLabel.text = goal.goalDescription
        self.goalTypeLabel.text = goal.goalType
        self.goalProgessLabel.text = String(goal.goalProgress)
        
        if goal.goalProgress == goal.goalCompletionValue{
            self.completionVIew.isHidden = false
        }else{
            self.completionVIew.isHidden = true
        }
    }
    
}
