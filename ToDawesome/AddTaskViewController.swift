//
//  AddTaskViewController.swift
//  ToDawesome
//
//  Created by Christian Selig on 2015-01-26.
//  Copyright (c) 2015 Christian Selig. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    @IBOutlet weak var doneButton: UIBarButtonItem!
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        super.prepareForSegue(segue, sender: sender)
        
        if sender as UIBarButtonItem == doneButton {
            var destinationViewController = segue.destinationViewController as TasksViewController
            destinationViewController.tasks.append(textField.text)
            destinationViewController.tableView.reloadData()
        }
    }

}
