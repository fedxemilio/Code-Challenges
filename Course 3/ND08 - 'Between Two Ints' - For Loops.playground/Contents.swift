//  🏔️ MTECH Code Challenge ND08: "Between Two Ints" 2️⃣↔️🔟
//  Concept: Practice using for loops to generate a dataset with custom parameters

//  Instructions:
    //  Create a function that takes two Integers, a and b, as input, and returns an array of Ints.
    //  The function should return an array of all integers from a to b, inclusive.

//  Notes:
    //  If a is greater than b, list all integers from b to a.

//  Examples:
    //  Input: 2, 10
    //  Output: [2, 3, 4, 5, 6, 7, 8, 9, 10]

//  ⌺ Black Diamond Challenge:
    //  Add a third parameter, c. Only return integers in the array that are divisible by c.
    //  Input: 2, 10, 3
    //  Output: [3, 6, 9]

import Foundation

func giveAllInts(from a: Int, to b: Int) -> [Int] {
//    if a < b {
//        return Array(a...b)
//    } else {
//        return Array(b...a)
//    }
    
    let max = max(a, b)
    let min = max == a ? b: a
    
    return Array(min...max)
}

print(giveAllInts(from: 2, to: 10))
print(giveAllInts(from: 5, to: 5))

func giveAllInts(from a: Int, to b: Int, divisor c: Int) -> [Int] {
    return giveAllInts(from: a, to: b).filter { $0 % c == 0 }
}

print(giveAllInts(from: 2, to: 10, divisor: 3))
print(giveAllInts(from: 5, to: 5, divisor: 3))
