//  🏔️ MTECH Code Challenge ND12: "ShortLongShort"
//  Concept: Practice concatenating strings based on unique criteria

//  Instructions:
    //  Create a function that takes two strings, "a" and "b", as input, and returns a string.
    //  Your function should combine the input strings in the form short+long+short, with the shorter string on the outside and the longer string on the inside.

//  Notes:
    //  The strings will not be the same length, but they may be empty (zero length).

//  Examples:
    //  Input: "hey", "howdy"
    //  Output: "heyhowdyhey"
    
    //  Input: "after", "time"
    //  Output: "timeaftertime"

//  ⌺ Black Diamond Challenge:
    //  Create a function that can split back apart the shortlongshort strings, returning them in a Tuple of type (String, String)

import Foundation

func longString(_ a: String, _ b: String) -> String {
    
    let count1 = a.count
    let count2 = b.count
    
    if count1 > count2 {
        return b + a + b
    } else {
        return a + b + a
    }
    
}

let stringA = "hey"
let stringB = "howdy"

print(longString(stringA, stringB))
print(longString("after", "time"))


func splitLongString(_ string: String) -> (String, String) {
    var longestSameString = 0
    
    for i in 0...string.count / 2 {
        if string.prefix(i) == string.suffix(i) {
            longestSameString = i
        }
    }
    
    let string1 = String(string.prefix(longestSameString))
    let string2 = String(string.dropFirst(longestSameString).dropLast(longestSameString))
    
    return (string1, string2)
}

print(splitLongString("heyhowdyhey"))
print(splitLongString("aftertimeafter"))

print(splitLongString("thisonestillworks?"))
print(splitLongString("startandends"))
