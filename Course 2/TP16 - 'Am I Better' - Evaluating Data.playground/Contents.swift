//  🏔️ MTECH Code Challenge TP16: "Am I Better?"
//  Concept: Practice evaluating data from an array

//  Instructions:
    //  There was a test in your class and you passed it. Congratulations!
    //  But you're an ambitious person. You want to know if you're better than the average student in your class.
    //  Create a function that accepts two parameters as input, your score and an array of your peers' scores, and returns true if you're better than them, or false if you're worse.

// Notes:
    //  Your points are not included in the array of your class's points. For calculating the average point you may add your points to the given array.

//  Examples:
    //  Input: myScore: 100, classScores: [80,39,90,88,68,78,39,99]
    //  Output: true

//  ⌺ Black Diamond Challenge:
    //  Create another function. This one should instead accept a dictionary with String keys and Int values. The strings represent the names of each of your classmates, and the integers are their scores. Return an array of the names of every classmate that you scored better than.

import Foundation

func isAboveAverage(_ scores: [Int], _ num: Int) -> Bool {
    let average = Double((scores.reduce(0, +) + num)) / Double(scores.count + 1)
    return Double(num) > average
}

let classScores = [80, 39, 90, 88, 68, 78, 39, 99]
let myScore = 100

let classScores2 = [7, 6, 9, 5, 8, 8, 10, 9, 9, 6]
let myScore2 = 7

print(isAboveAverage(classScores, myScore))
print(isAboveAverage(classScores2, myScore2))


func getWorseScorers(_ scores: [String: Int], _ num: Int) -> [String] {
    var worseScorers: [String] = []
    for (name, score) in scores {
        if score < num {
            worseScorers.append(name)
        }
    }
    return worseScorers
}

let classScores3 = ["YurMom": 2, "Ye": 7, "Wiwi": 5, "Mimi": 9, "Toot": 8, "Lenni": 4]
let myScore3 = 7

print(getWorseScorers(classScores3, myScore3))
