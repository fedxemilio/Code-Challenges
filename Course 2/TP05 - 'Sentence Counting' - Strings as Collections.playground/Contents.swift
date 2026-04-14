//  🏔️ MTECH Code Challenge TP05: "Sentence Counting"
//  Concept: Practice how to think programatically about straightforward language tasks

//  Instructions:
    //  Given a string, return the number of sentences found in the string.

//  Examples:
    //  Input: "Alas, poor Yorick! I knew him, Horatio: a fellow of infinite jest, of most excellent fancy: he hath borne me on his back a thousand times; and now, how abhorred in my imagination it is! my gorge rims at it."
    //  Output: 3

//  Bonus challenge:
    //  Ensure that abbreviations ("Mr.", "e.g.") don't end a sentence.
    //  Handle sentences that end with multiple punctuation marks ("!?", "...")
    //  Return an array with the sentences ordered by length.

import Foundation

var endMarks: [Character] = [".", "!", "?"]

func countSentences(_ sentence: String) -> Int {
    return sentence.count { endMarks.contains($0) }
}

let sentence1 = "Alas, poor Yorick! I knew him, Horatio: a fellow of infinite jest, of most excellent fancy: he hath borne me on his back a thousand times; and now, how abhorred in my imagination it is! my gorge rims at it."

print(countSentences(sentence1))

func countSentences2(_ sentence: String) -> Int {
    
    var count = 0
    var continuedPuncuation = false
    
    for char in sentence {
        if endMarks.contains(char) && !continuedPuncuation {
            count += 1
            continuedPuncuation = true
        } else if !endMarks.contains(char) { continuedPuncuation = false}
    }
    return count
}

let sentence2 = "Alas, poor Yorick!? I knew him, Horatio: a fellow of infinite jest, of most excellent fancy: he hath borne me on his back a thousand times; and now, how abhorred in my imagination it is! my gorge rims at it..."

print(countSentences2(sentence1))
print(countSentences2(sentence2))
