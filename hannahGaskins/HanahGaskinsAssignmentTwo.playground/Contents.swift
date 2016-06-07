/*
 
 =================== Week One, Assignment Two 6/7/16 ===================
 
 */

// 1. Write a function that takes in an array of strings, checks if array contains “Earth”, if not, adds it otherwise returns

var planetsArr = ["Mars", "Venus", "Mercury"]

func checkForEarth() {
    for _ in planetsArr {
        if !planetsArr.contains("Earth") {
            planetsArr.append("Earth")
        }
    }
}

checkForEarth()



// 2. Use reduce to create single string from the above array. [“Venus”, “Earth”] would produce “Venus, Earth”

var planets = ["Venus", "Earth"]

let reducePlanets = planets.reduce("") { (result, planet) -> String in
    return result + " " + planet
}

// 3. Declare and implement a dictionary that can contain as values Strings, Ints, etc


let valuesDict = [String: AnyObject]()



// 4. Declare a dictionary of string values. Declare a function that takes in a string and searches dictionary for it. Use filter

var dictOfFeelings = [
    1 : "happy",
    2 : "sad",
    3 : "angry",
    4 : "giggly"
]

func stringSearch(string: String) -> Bool {
    let filterDict = dictOfFeelings.filter { (key, value) -> Bool in
        print(value == string)
        return value == string
    }
    return !filterDict.isEmpty
}



stringSearch("happy")
stringSearch("disgust")



// 5. Write examples for union, intersect, subtract, exclusive Or set operations


let setOne: Set = [1, 2, 3, 4, 5]
let setTwo: Set = [5, 6, 7, 8, 9, 10]

let setUnion = setOne.union(setTwo)
let setIntersect = setOne.intersect(setTwo)
let setSubtract = setOne.subtract(setTwo)
let setExclusiveOr = setOne.exclusiveOr(setTwo)


// 6. Write a function that counts repeating words and prints out the count of each

let arrayOfStrings = ["stuff", "thing", "stuff", "atom", "molecule", "molecule"]

func searchRepeatingWords(arrayOfStrings: [String]) -> Void{
    let assist = helper(arrayOfStrings)
    for (key, value) in assist {
        print("\(key) \(value)")
    }
}


func helper(array: [String]) -> [String: Int] {
    var dict = [String : Int]()
    for element in arrayOfStrings {
        if dict[element]  == nil {
            dict[element] = 1
        } else {
            dict[element] = dict[element]! + 1
        }
    }
    return dict
}


searchRepeatingWords(arrayOfStrings)

// 7. Add two numbers without using “+”

let numOne = 7
var numTwo = 10

for one in 0..<numOne {
    numTwo = numTwo + 1
}

print(numTwo)

