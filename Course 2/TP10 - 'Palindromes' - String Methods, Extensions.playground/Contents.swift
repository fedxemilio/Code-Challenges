//  🏔️ MTECH Code Challenge TP10: "Palindromes"
//  Concept: Practice finding mathematical/code/logical solutions to language related tasks. You'll need to think about what makes a palindrome a palindrome and how that can translate to code.

//  Instructions:
    //  You may remember that a palindrome is a word that's spelled the same backward and forwards — like "mom" or "racecar."
    //  Create a function that accepts a string as input and returns TRUE if the string is a palindrome.

//  Examples:
    //  Input: "rotator"
    //  Output: true

    //  Input: "mississippi"
    //  Output: false

//  ⌺ Black Diamond Challenge:
    //  Find a way to check whether a phrase or sentence is a palindrome — for example, "Taco Cat" or, "Too bad I hid a boot." You'll have to find a way to remove spaces in your phrases to get the function to work.

//  Fun Facts:
    //  The Finnish word "saippuakauppias" is 15 letters, is a palindrome, and is used regularly.
    //  "A man, a plan, a canal - panama!" is a famous palindrome by Leigh Mercer; Dan Hoey expanded it to 540 words: 🔗http://complex.gmu.edu/people/ernie/witty/Hoey_palindrome.html

import Foundation

func isPalindrome(_ word: String) -> Bool {
    return word == String(word.reversed())
}

func isPalindrome2(_ sentence: String) -> Bool {
    let unspacedSentence = sentence.filter({ !$0.isWhitespace && !$0.isPunctuation })
    return unspacedSentence.lowercased() == String(unspacedSentence.lowercased().reversed())
}

let word1 = "rotator"
let word2 = "mississippi"

print(isPalindrome(word1))
print(isPalindrome(word2))

let sentence1 = "Taco Cat"
let sentence2 = "Too bad I hid a boot."

print(isPalindrome2(sentence1))
print(isPalindrome2(sentence2))
