//  🏔️ MTECH Code Challenge ND16: "Punctuation Removal"
//  Concept: Practice manipulating a string

//  Instructions:
    //  Remove any punctuation mark from the end of a string.
    //  If the string ends with a punctuation mark (e.g., '.', ',', '!', '?', ';', ':', '-', '_'), remove only the last occurrence of such a mark.
    //  If the input string is empty, return an empty string.

//  Examples:
    //  Input: "Greetings, friends!!"
    //  Output: "Greetings, friends!"

    //  Input: "Wow."
    //  Output: "Wow"

//  ⌺ Black Diamond Challenge:
    //  Create another function. This time, remove all leading and trailing punctuation, including multiples.
    //  Input: "...This is a good example!!!", Output: "This is a good example"

import Foundation

func removePunctuation(_ string: String) -> String {
    if string.last?.isPunctuation == true {
        return String(string.dropLast())
    }
    return string
}

let string1 = "Greetings, friends!!"
let string2 = "Wow."
let string3 = ""

print(removePunctuation(string1))
print(removePunctuation(string2))
print(removePunctuation(string3))

func removePunctuation2(_ string: String) -> String {
    var leadingPunc = 0
    var trailingPunc = 0
    
    for char in string {
        if char.isPunctuation {
            leadingPunc += 1
        } else {
            break
        }
    }
    
    for char in string.reversed() {
        if char.isPunctuation {
            trailingPunc += 1
        } else {
            break
        }
    }
    return String(string.dropFirst(leadingPunc).dropLast(trailingPunc))
}

let string4 = "...This is a good example!!!"

print(removePunctuation2(string1))
print(removePunctuation2(string2))
print(removePunctuation2(string3))
print(removePunctuation2(string4))
