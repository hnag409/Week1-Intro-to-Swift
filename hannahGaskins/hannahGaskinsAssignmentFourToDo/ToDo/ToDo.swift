//
//  ToDo.swift
//  ToDo
//
//  Created by hannah gaskins on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation


class ToDo: Identity
{
    var task: String
    var status: String
    var dueDate: String
    var id: String
    
    init(task: String, status: String, dueDate: String)
    {
        self.task = task
        self.status = status
        self.dueDate = dueDate
        self.id = NSUUID().UUIDString
    }
    
    func description() -> String
    {
        return "\(self.task) \(self.status), \(self.dueDate)"
    }
}