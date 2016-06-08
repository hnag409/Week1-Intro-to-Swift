/*
 
 =================== Week One, Assignment Three 6/8/16 ===================
 
 */

import UIKit

// Declare Identity protocol with id function


protocol Identity {                        // identity protocol to use with class
    var id: String { get set }
}



// Declare a ToDo class that conforms to Identity protocol… Define your own model scheme (variable it contains, etc)


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
        return "\(self.task) \(self.status), \(self.dueDate), \(self.id)"
    }
}



// Define ObjectStore protocol with these functions: add:, remove:, objectAtIndex:, count, allObjects.


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



// Create Store singleton that will conform to ObjectStore protocol and implement requirements


class Store: ObjectStoreProtocol
{
    static let shared = Store()             // singleton
    private init() {}
    
    typealias Object = ToDo
    
    var items = [Object]()                  // array that will contain the item objects
    
    
    
}



// Demonstrate adding / removing of ToDo items.


let itemOne = ToDo(task: "Get Beer", status: "Not Done", dueDate: "5/3/2017")
let itemTwo = ToDo(task: "Get Milk", status: "Done", dueDate: "3/2/2016")
let itemThree = ToDo(task: "Doctor", status: "Not Done", dueDate: "3.2.17")


Store.shared.add(itemOne)
Store.shared.add(itemTwo)
Store.shared.add(itemThree)

for item in Store.shared.allObjects()
{
    print(item.description())
}


Store.shared.remove(itemOne)

for item in Store.shared.allObjects()
{
    print(item.description())
}


// additional testing of functions from objectStoreProtocol extension

Store.shared.objectAtIndex(1)
Store.shared.allObjects()
Store.shared.count()
