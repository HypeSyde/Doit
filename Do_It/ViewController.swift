//
//  ViewController.swift
//  Do_It
//
//  Created by Brandon Noecker on 8/16/17.
//  Copyright © 2017 HypeSyde. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var TableView: UITableView!
    
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = makeTask()
        
        TableView.dataSource = self
        TableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = "❗️\(task.name)"
        }else{
            cell.textLabel?.text = task.name
        }
        return cell
    }
    
    func makeTask() -> [Task]{
        let task1 = Task()
        task1.name = "Walk the dogs"
        task1.important = false
        
        let task2 = Task()
        task2.name = "eat food"
        task2.important = true
        
        let task3 = Task()
        task3.name = "jump off bridge"
        task3.important = false
        
        return [task1, task2, task3]
    }
  
    @IBAction func PlusTapped(_ sender: Any) {
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
    
}

