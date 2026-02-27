//  🏔️ MTECH Code Challenge SF30: "Averaging Scores"
//  Concept: Practice calculating the average of numbers in an array and rounding down the result

//  Instructions:
    //  It's the academic year's end, fateful moment of your school report. The averages must be calculated. All the students come to you and entreat you to calculate their average for them. Easy! You just need to write a script.
    //  Return the average of the given array rounded down to its nearest integer.

//  Notes:
    //  The array will never be empty.

//  Examples:
    //  Input: array: [90, 80, 70, 60, 50]
    //  Output: 70

    //  Input: array: [1, 2, 3, 4, 5]
    //  Output: 3

//  ⌺ Black Diamond Challenge:
    //  Create a function that not only calculates the average and rounds down, but also returns the highest and lowest values in the array.

import Foundation

func average(_ scores: [Int]) -> Int {
    scores.reduce(0, +) / scores.count
}

let scores1 = [90, 80, 70, 60, 50]
let scores2 = [1, 2, 3, 4, 5]

print(average(scores1))
print(average(scores2))

func average2(_ scores: [Int]) -> [Int] {
    [scores.reduce(0, +) / scores.count, scores.max() ?? 0, scores.min() ?? 0]
}

print(average2(scores1))
print(average2(scores2))
