//
//  NewItemViewController.swift
//  ToDo
//
//  Created by Michael Babiy on 1/13/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import UIKit

class NewItemViewController: UIViewController
{
    @IBOutlet weak var todoTextField: UITextField!
    
    class func identifier() -> String
    {
        return "NewItemViewController"
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.navigationItem.title = "New"
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func saveButtonSelected(sender: AnyObject)
    {
        guard let navigationController = self.navigationController else { fatalError("Where did Navigation Controller go? Error origin: \(#function)") }
        guard let description = self.todoTextField.text else { return }
        
        // INPROCESS: Missing model.
        
        // refactored from class example
        if let  taskString = self.todoTextField.text {             //optional chaining
            let todo = ToDo(task: taskString, status: "New", dueDate: "2.1.16")
            Store.shared.add(todo)
            
        }
        
        
        
        navigationController.popViewControllerAnimated(true)
    }
    
}
