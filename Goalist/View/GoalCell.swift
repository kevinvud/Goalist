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
    
    
    func configureCell(description: String, type: String, goalProgressAmount: Int){
        self.goalDescriptionLabel.text = description
        self.goalTypeLabel.text = type
        self.goalProgessLabel.text = String(describing: goalProgressAmount)
        
    }
}
