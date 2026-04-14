//  🏔️ MTECH Code Challenge TP07: "Letter Counter"
//  Concept: Practice evaluating strings; learn about the underlying complexity of Strings, including how Unicode Scalars work

//  Instructions:
    //  Write a function that prints how many of each letter is in a string.

//  Examples:
    //  Input: "pepper"
    //  Output:
        //  Found 2 letter e
        //  Found 3 letter p
        //  Found 1 letter r

//  ⌺ Black Diamond Challenge:
    //  Change your function so that:
        //  It only counts letters, not numbers or punctuation
        //  The output is sorted alphabetically
        //  It does not use a for-loop (explicitly)

import Foundation

func printCountOfEachLetter1(in string: String) {
    var countsByLetter = [Character : Int]()
    for character in string {
        countsByLetter[character, default: 0] += 1
    }
    for (letter, count) in countsByLetter {
        print("Found \(count) letter \(letter)")
    }
}

printCountOfEachLetter1(in: "pepper")


func printLetterCount(_ word: String) {
    var letterCount = [Character: Int]()
    for letter in word {
        letterCount[letter] = word.count(where: {$0 == letter})
    }
    for (letter, count) in letterCount {
        print("Found \(count) of letter \(letter)")
    }
}

printLetterCount("pepper")

let alphabet = "abcdefghijklmnopqrstuvwxyz"

func printLetterCount2(_ word: String) {
    var letterCount = [Character: Int]()
    for letter in word {
        if alphabet.contains(letter.lowercased()) {
            letterCount[letter] = word.count(where: {$0 == letter})
        }
    }
//    let letterArray: [(String, String)] = []
//    for (letter, count) in letterCount {
//        letterArray.append((letter, String(count)))
//    }
    let letterArray = Array(letterCount)
    letterArray.sorted(by: < )
}

printLetterCount2("P3Pp3r$!")
