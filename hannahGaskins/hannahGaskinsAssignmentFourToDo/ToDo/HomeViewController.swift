//
//  ViewController.swift
//  ToDo
//
//  Created by Michael Babiy on 1/13/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: Helper Functions
    // DONE
    
    func configureCell(indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("todoCell", forIndexPath: indexPath)
        
        // Missing model.
        
        let task = Store.shared.allObjects()[indexPath.row]
        
        // Missing setup.
        
        cell.textLabel?.text = "\(task.description())"  // description() should display all member variables of Todo Class
        
        return cell
    }
    
    // MARK: UITableViewDataSource
    
    // DONE

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return Store.shared.count() // will display row for every task we have based on the count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        return self.configureCell(indexPath)
    }
    
    // MARK: UITableViewDelegate
    // DONE
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool
    {
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
    {
        if editingStyle == .Delete {
            
            // InProcess: Missing model.
            
            let task = Store.shared.allObjects()[indexPath.row]
            Store.shared.remove(task)
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Fade)
        }
    }
    
}

