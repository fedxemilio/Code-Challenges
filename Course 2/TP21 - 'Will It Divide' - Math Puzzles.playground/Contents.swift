//  🏔️ MTECH Code Challenge TP21: "Will It Divide"
//  Concept: Practice translating simple math into Swift code

//  Instructions:
    //  Create a function that checks if a number n is divisible by two numbers x AND y. All inputs are positive, non-zero digits.

//  Examples:
    //  Input: n: 10, x: 2, y: 5
    //  Logic: 10 is divisible by 2 and 5
    //  Output: true

    //  Input: n: 27, x: 9, y 2
    //  Logic: 27 is not divisible by 2
    //  Output: false

//  ⌺ Black Diamond Challenge:
    //  Extend the function to accept an additional array parameter, 'divisors', which is an array of integers.
    //  The function should return true if the number n is divisible by *all* numbers in the 'divisors' array, and false if it is not divisible by any one of them.

import Foundation

func isDivisible(_ num: Int, by x: Int, and y: Int) -> Bool? {
    guard x != 0 && y != 0 else {return nil}
    return num % x == 0 && num  % y == 0
}

func isDivisible(_ num: Int, by divisors: [Int]) -> Bool? {
    for divisor in divisors {
        if num == 0 {return nil}
        if num % divisor != 0 {
            return false
        }
    }
    return true
}

print(isDivisible(10, by: 2, and: 5) ?? " :( ")
print(isDivisible(27, by: 9, and: 2) ?? " :( ")

let array1 = [3, 4, 5, 6]

print(isDivisible(60, by: array1) ?? " :( ")
print(isDivisible(30, by: array1) ?? " :( ")


