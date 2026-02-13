//  🏔️ MTECH Code Challenge SF23: "Fake Binary"
//  Concept: Identify how to use a string as a collection (array) and how to change a numeric Character to an Int

//  Instructions:
    //  Create a function that takes one String as a parameter and returns a string.
    //  Assume the string will always be a number.
    //  Return a string where any digit below 5 is replaced with '0' and any digit 5 and above with '1'.

//  Examples:
    //  Input: "13579"
    //  Output: "00111"

    //  Input: "51093"
    //  Output: "10010"

//  ⌺ Black Diamond Challenge:
    //  Add three more parameters to your function; one that defines the mid-point (5 in the above instructions), and one that defines what to replace each digit with (0 and 1 in the above examples)

import Foundation

func fakeBinary(_ input: String) -> String {
    //return input.map {$0 < "5" ? "0" : "1"}.joined()
    var newString = ""
    for char in input {
        let int: Int? = Int(String(char))
        if let int {
            if int < 5 {
                newString += "0"
            } else {
                newString += "1"
            }
        }
    }
    return newString
}

print(fakeBinary("13579"))
print(fakeBinary("51093"))

func fakeBinary2(_ input: String, midpoint: Int, value1: String, value2: String) -> String {
    //return input.map {String($0) < String(midpoint) ? value1 : value2}.joined()
    var newString = ""
    for char in input {
        let int: Int? = Int(String(char))
        if let int {
            if int < midpoint {
                newString += String(value1)
            } else {
                newString += String(value2)
            }
        }
    }
    return newString
}

print(fakeBinary2("13579", midpoint: 5, value1: "A", value2: "E"))
print(fakeBinary2("51093", midpoint: 2, value1: "oo", value2: "ee"))
