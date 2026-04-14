//  🏔️ MTECH Code Challenge TP26: "Can You Digit"
//  Concept: Practice using regular expressions

//  Instructions:
    //  Create a function take that takes a string as input and returns a boolean.
    //  Your function should return true if the input string is a single digit, and false if it is anything else.
    //  You must use a regular expression to determine this. (Don't use Character's isNumber() method.)

//  Examples:
    //  Input: "7"
    //  Output: true

    //  Input: "838"
    //  Output: false

    //  Input: "hi"
    //  Output: false

//  ⌺ Black Diamond Challenge:
    //  Extend the function to handle the following cases:
    //  1. Leading or trailing spaces: "  7  " should return true.
    //  2. Single digit with a positive or negative sign: "+7" and "-7" should return true.
    //  3. A digit within a string: "abc7xyz" should return true.

import Foundation

func canDigit(_ string: String) -> Bool {
//    str.range(of: "^[0-9]$", options: .regularEspression) != nil
    Int(string) != nil ? true: false
}

print(canDigit("7"))
print(canDigit("838"))
print(canDigit("hi"))

func canDigit2(_ string: String) -> Bool {
    let newString = string.replacing(" ", with: "")
    return Int(string) != nil ? true: false
}

//func canDigit3(_ string: String) -> Bool {
//    let stringArray = Array(string)
//    let digits = "1234567890"
//    let operators = "+-"
//    
//    return operators.contains(stringArray[0])
//}

func hasDigit(_ string: String) -> Bool {
    let digits = "1234567890"
    
    for char in string {
        if digits.contains(char) {
            return true
        }
    }
    return false
}

print(hasDigit(" 7 "))
print(hasDigit("+7"))
print(hasDigit("abc7xyz"))
