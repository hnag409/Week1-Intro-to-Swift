// Hannah Gaskins WhiteBoard Day 6.10.2016


// Give an array of million words, write a function to return all palindromes.


var palArray = ["hannah", "two", "racecar", "hi", "tacocat"]


//  1. go through each item in the array and
//  1.b check if it is in fact a palindrome
//  2. if it is a palin print it



func palindromeReturn(array: [String]) -> [String] {
    var palidromeList = [String]()
    for word in palArray {
        var newStringInArray = ""
        for i in word.characters {
            newStringInArray = "\(i)" + newStringInArray
        }
        
        if word == newStringInArray {
            print(word)
            palidromeList.append(word)
        }
    }
    return palidromeList
}

palindromeReturn(palArray)


// Convert base 10 to base 16 numbers

// 1. dictionary holding the base10 base16 pairs
// 2. function computing math (number/16 with remainder) 
// 2.b function also using our dictionary to convert division outcome into base16
// 3. return this base16 outcome value

func toHex(baseTen: Int) -> String {
    
    var primaryNum = baseTen
    var hexNum = ""
    var remainder = 1
    
    let conversionDict = [0 : "0", 1 : "1", 2 : "2", 3: "3", 4 : "4", 5 : "5", 6 : "6", 7 : "7", 8 : "8", 9 : "9", 10 : "A", 11 : "B", 12 : "C", 13 : "D", 14 : "E", 15 : "F"]
    
    while remainder > 0 {
        remainder = primaryNum % 16
        primaryNum = primaryNum / 16
        
        if remainder < 10 {
            hexNum = "\(conversionDict[remainder]!)\(hexNum)"
        } else {
            hexNum = "\(conversionDict[remainder]!)\(hexNum)"
        }
    }
    return "\(hexNum)"
}

toHex(10)
toHex(99)
toHex(3838)
toHex(1)
toHex(55)
toHex(89)
toHex(1231)




