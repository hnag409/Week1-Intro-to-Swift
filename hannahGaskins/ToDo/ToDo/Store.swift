//
//  Store.swift
//  ToDo
//
//  Created by hannah gaskins on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation


class Store: ObjectStoreProtocol
{
    static let shared = Store()             // singleton
    private init() {}
    
    typealias Object = ToDo
    
    var items = [Object]()                  // array that will contain the item objects
    
    
    
}