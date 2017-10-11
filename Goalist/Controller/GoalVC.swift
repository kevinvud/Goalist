//
//  ViewController.swift
//  Goalist
//
//  Created by PoGo on 10/10/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import UIKit
import CoreData

class GoalVC: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        

    }

    @IBAction func addGoalButtonPressed(_ sender: Any) {
        //animation segue
        guard let createGoalVC = storyboard?.instantiateViewController(withIdentifier: "CreateGoalVC") else{return}
        presentDetail(createGoalVC)
        
    }
    
}

extension GoalVC: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell", for: indexPath) as? GoalCell{
            cell.configureCell(description: "Eat salad twice a weeak.", type: .shortTerm, goalProgressAmount: 2)
            return cell
        }else{
            return UITableViewCell()
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    
    
    
}
