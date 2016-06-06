// Week One, Assignment One 6/6/16

// Write a function that takes in a string, checks if it can be converted to a number and if possible, returns a number

func stringToInt(string: String) -> Int? {
    
    return Int(string)
}

var numbers = "1234"
stringToInt(numbers)

var test = "hiya"
stringToInt(test)

// Write a function that takes in a tuple (code, message) and returns a string by using interpolation

func tupleToString(code: String, message: String) -> String {
    return "The code is \(code), and the message is \(message)"
}

tupleToString("Mary Poppins", message: "bibidy bobidy boop")

// Write a function that take in a string, and returns a message: “String contains n characters”

