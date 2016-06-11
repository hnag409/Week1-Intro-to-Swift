//
//  ObjectStoreProtocol.swift
//  ToDo
//
//  Created by hannah gaskins on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation


protocol ObjectStoreProtocol: class
{
    associatedtype Object: Identity         // objects that are conforming here must also conform to identity as well
    var items: [Object]{ get set }          // array that will contain the item objects
    
    func add(object: Object)
    func remove(object: Object)
    func objectAtIndex(number: Int) -> Object
    func count() -> Int
    func allObjects () -> [Object]
    
}

// Extend ObjectStore protocol to provide basic implementation for functions


extension ObjectStoreProtocol
{
    
    func add(object: Object) {
        self.items.append(object)
    }
    
    func remove(object: Object) {
        self.items = self.items.filter( { (items) -> Bool in
            return object.id != items.id
        } )
    }
    
    func objectAtIndex(number: Int) -> Object {
        return self.items[number]
    }
    
    func count() -> Int {
        return self.items.count
    }
    
    func allObjects() -> [Object] {
        return self.items
    }
    
    
    
}

