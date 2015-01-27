//
//  TasksViewController.swift
//  ToDawesome
//
//  Created by Christian Selig on 2015-01-26.
//  Copyright (c) 2015 Christian Selig. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var addButton: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    var tasks = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tasks.append("Get milk")

        tableView.dataSource = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countElements(tasks)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("TaskCell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel!.text = tasks[indexPath.row]
        
        return cell
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            tasks.removeAtIndex(indexPath.row)
            tableView.reloadData()
        }
    }
}
