//
//  CreateTaskViewController.swift
//  Do_It
//
//  Created by Brandon Noecker on 8/17/17.
//  Copyright © 2017 HypeSyde. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        // Ceatee a Task from the outlet information
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        
        // Add new task to array in prevouos viewController
        
        previousVC.tasks.append(task)
        previousVC.TableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    
}

