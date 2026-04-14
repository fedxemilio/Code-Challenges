//  🏔️ MTECH Code Challenge TP19: "Alphabet Indexer"
//  Concept: Practice storing and evaluating a custom dataset

//  Instructions:
    //  When provided with a letter, return its position in the English alphabet.
    //  Your code should either throw an error, return nil, or fail to compile if something other than a single letter is provided.

//  Examples:
    //  Input: "a"
    //  Output: 1

//  Notes:
    //  Your code should be case insensitive.

//  ⌺ Black Diamond Challenge:
    //  Extend the functionality to handle strings with multiple characters. For such strings, return the sum of the positions of all the letters in the string. If any non-letter characters are present, throw an error, return nil, or fail to compile.
    //  Rewrite your function to not rely on using a literal array for the alphabet. (In other words, the alphabet itself should not appear in your function.)

import Foundation

let alphabet = "abcdefghijklmnopqrstuvwxyz"
let alphabetArray = Array(alphabet)

func alphabetIndex(_ char: Character) -> Int? {
    for (index, letter) in alphabet.enumerated() {
        if letter == Character(char.lowercased()) {
            return index + 1
        }
    }
    return nil
}

print(alphabetIndex("a") ?? "No")

func alphabetIndex2(_ char: Character) -> Int? {
    if let index = alphabetArray.firstIndex(of: Character(char.lowercased())) {
        return index + 1
    }
    return nil
}

print(alphabetIndex2("A") ?? "No")

func numericValue(_ string: String) -> Int? {
    var value = 0
    for char in string {
        if let index = alphabetArray.firstIndex(of: Character(char.lowercased())) {
            value += index + 1
        } else {return nil}
    }
    return value
}

print(numericValue("aaa") ?? "Nope")
print(numericValue("Weiner") ?? "Nope")
print(numericValue("weiner") ?? "Nope")
print(numericValue("TypesafetySucks") ?? "Nope")
