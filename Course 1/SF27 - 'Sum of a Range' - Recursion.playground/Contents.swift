//  🏔️ MTECH Code Challenge SF27: "Sum of a Range"
//  Concept: Practice using logic to translate a simple math equation into elegant Swift code.

//  Instructions:
    //  Write a program that finds the summation of every number from 1 to num.

//  Notes:
    //  The number will always be a positive integer greater than 0.

//  Examples:
    //  Input: 2
    //  Math: 1 + 2 = 3
    //  Output: 3

    //  Input: 8
    //  Math: 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 = 36
    //  Output: 36

//  ⌺ Black Diamond Challenge:
    //  Make your function compatible with negative integers, instead adding from -1 to the number specified.
    //  Input: -5, Math: -5 + -4 + -3 + -2 + -1, Output: -15

import Foundation

func sumRange(to num: Int) -> Int {
    var sum = 0
    for number in 1...num {
        sum += number
    }
    return sum
}

print(sumRange(to: 2))
print(sumRange(to: 8))

func sumRange2(to num: Int) -> Int {
    var sum = 0
    if num < 0 {
        for number in num ... -1 {
            sum += number
        }
        return sum
    }
    for number in 1...num {
        sum += number
    }
    return sum
}

print(sumRange2(to: -5))

func sumRange3(highest: Int) -> Int {
    var sum = 0
    for num in 1...(abs(highest)) {
        sum += (highest > 0 ? num: num * -1)
    }
    return sum
}

print(sumRange3(highest: -5))
