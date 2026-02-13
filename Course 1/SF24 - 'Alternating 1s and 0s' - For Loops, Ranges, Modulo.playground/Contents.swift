//  🏔️ MTECH Code Challenge SF15: "Alternating 1s and 0s"
//  Concept: Use for loops to produce strings or collections

//  Instructions:
    //  Create a function called 'stringy' that takes a size and returns a string of alternating '1s' and '0s' that is that size.
    //  The string should start with a 1.

//  Restrictions:
    //  The size will always be positive and will only use whole numbers.

//  Examples:
    //  Input: 6
    //  Output: "101010".

    //  Input: 4
    //  Output: "1010".

    //  Input 11:
    //  Output: "10101010101".

//  ⌺ Black Diamond Challenge:
    //  Add a second parameter that takes a bool. If true, start the string with a 1; if false, start it with a 0.
    //  Alternate from there as expected, i.e. "01010"

import Foundation

func stringy(size: Int) -> String {
    //return String(repeating: "10", count: (size / 2)) + (size%2==1 ? "1": "")
    var string = ""
    for _ in 1...size/2 {
        string += "10"
    }
    if size % 2 == 1 {
        return string + "1"
    } else {return string}
}

print(stringy(size: 6))
print(stringy(size: 4))
print(stringy(size: 11))

func stringy2(size: Int, bool: Bool) -> String {
    var string = ""
    for _ in 1...size/2 {
        string += (bool ? "10": "01")
    }
    if size % 2 == 1 {
        return string + (bool ? "1": "0")
    } else {return string}
}

print(stringy2(size: 6, bool: false))
print(stringy2(size: 4, bool: false))
print(stringy2(size: 11, bool: false))
