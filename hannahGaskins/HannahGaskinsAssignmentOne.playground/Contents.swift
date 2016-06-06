/* 
 
 =================== Week One, Assignment One 6/6/16 ===================
 
*/



// 1. Write a function that takes in a string, checks if it can be converted to a number and if possible, returns a number



func stringToInt(string: String) -> Int? {
    return Int(string)
}

var numbers = "1234"
stringToInt(numbers)

var hi = "hiya"
stringToInt(hi)

var special = "😱"
stringToInt(special)

var anotherTest = "@#@"
stringToInt(anotherTest)

// 2. Write a function that takes in a tuple (code, message) and returns a string by using interpolation



func tupleToString(code: String, message: String) -> String {
    return "The code is \(code), and the message is \(message)"
}

tupleToString("Mary Poppins", message: "bibidy bobidy boop")


// 3. Write a function that take in a string, and returns a message: “String contains n characters”



func characterCount(text: String) -> String {
    let n = text.characters.count
    return "String contains \(n) characters"
}

characterCount("Hiya")
characterCount("")
characterCount("!@#$%^&*()_+}{|?>:~")
characterCount("123456789")


// 4. Write a function that takes in a string and reverses it. Use a simple for loop



func stringReverse(stringToReverse: String) -> String {
    var newString = ""
    
    for i in stringToReverse.characters {
        newString = "\(i)" + newString
    }
    return newString
}

stringReverse("hiya Laura, let's get steps this summer!")


// Bonus: Declare a variable that’s function. Implement function to take in a string (name) and return greeting message.



func greetingMessage(name: String) -> String {
    return "Hiya, \(name)"
}

var returnedGreet: (String) -> String = greetingMessage

returnedGreet("Hannah")





