//  🏔️ MTECH Code Challenge SF22: "Sum of Positives"
//  Concept: Practice iterating through an array using For Loops; instructor will introduce or review the map method as well

//  Instructions:
    // Create a function that takes an array of numbers, and returns the sum of all of the positives ones.

//  Notes:
    //  If there is nothing to sum, output 0.

//  Examples:
    //  Input: [1,-4,7,12]
    //  Math: 1 + 7 + 12 = 20
    //  Output: 20

//  ⌺ Black Diamond Challenge:
    //  Create a second function that instead returns two arrays, separating the positive and the negative numbers in the array. You can return it as an ([Int], [Int]) tuple, or as a custom structure holding both arrays.

import Foundation

func sumOfPositiveInts(_ arr: [Int]) -> Int {
//    var total = 0
//    for num in arr {
//        if num > 0 {
//            total += num
//        }
//    }
//    return total
    return arr.filter{$0 > 0}.reduce(0, +)
}

let thisSum = sumOfPositiveInts([1, -4, 8, 12, -17, 0, 12])
print(thisSum)

func splitArrayAtZero(_ arr: [Int]) -> ([Int], [Int]) {
    var posInts: [Int] = []
    var negInts: [Int] = []
    for num in arr {
        if num > 0 {
            posInts.append(num)
        } else if num < 0 {
            negInts.append(num)
        }
    }
    return (posInts, negInts)
}

let splitArray = splitArrayAtZero([1, -4, 8, 12, -17, 0, 12])
print(splitArray)
