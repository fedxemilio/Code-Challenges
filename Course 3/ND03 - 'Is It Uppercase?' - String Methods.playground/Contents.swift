//  🏔️ MTECH Code Challenge ND03: "Is It Uppercase?"
//  Concept: Learn a useful String method as a path to understanding more about types and methods; use for loops

//  Instructions:
    //  Create a function that takes a String as input and returns a Bool.
    //  Your function should check to see whether the input string is in ALL CAPS.

//  Examples:
    //  Input: "Hello"
    //  Output: false

    //  Input: "IT'S SO NICE TO MEET YOU"
    //  Output: true

//  Notes:
    //  An empty string input should return true.
    //  You may assume the input string only contains letters and spaces, no numbers or special characters.

//  ⌺ Black Diamond Challenge:
    //  Make another function. This one should accept an array of strings and check if all of them are uppercased, some are, or none are. If all are, return 1; if some are, return 0; if none are, return -1.
    //  Make both your functions account for numbers and special characters.

import Foundation

func allCaps(_ string: String) -> Bool {
    string == string.uppercased()
}

print(allCaps("Hello"))
print(allCaps("IT'S SO NICE TO MEET YOU"))

func allCaps(_ strings: [String]) -> Int {
    var someValue = 1
    var allValue = -1
    for string in strings {
        if allCaps(string) {
            allValue = 1
        } else if allValue == 1 {
            someValue = 0
        }
    }
    return min(someValue, allValue)
}
