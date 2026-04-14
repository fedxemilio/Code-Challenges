//  🏔️ MTECH Code Challenge TP15: "Removing Spaces"
//  Concept: Practice modifying strings

//  Instructions:
    //  Create a function that accepts a string as input and returns a different string.
    //  Remove the spaces from the input string, then return the resultant string.

//  Examples:
    //  Input: "Hello, world!"
    //  Output: "Hello,world!"

//  ⌺ Black Diamond Challenge:
    //  Make it so that spaces are not removed if they come after a period, exclamation point, or question mark.
    //  Create another function that can accept as input any string that has previously been returned and give you the original input string.

import Foundation

func removeSpaces(_ word: String) -> String {
    word.replacingOccurrences(of: " ", with: "")
}

let string1 = "Hello, world!"

print(removeSpaces(string1))

func removeSpaces2(_ word: String) -> String {
    let punctuation = [".", "!", "?"]
    var newWord: [Character] = []
    var wordArr = Array(word)
    
    newWord.append(wordArr[0])
    for i in 1...word.count - 1{
        let prev = wordArr[i - 1]
        if wordArr[i] == " " && !punctuation.contains(String(prev)) {
            continue
        }
        newWord.append(wordArr[i])
    }
    return String(newWord)
}

let string2 = "Make it so that spaces are not removed if they come after a period, exclamation point, or question mark. Create another function that can accept as input any string that has previously been returned and give you the original input string."

print(removeSpaces2(string2))
