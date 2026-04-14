//  🏔️ MTECH Code Challenge TP23: "Powers of Two"
//  Concept: Practice translating math into Swift code

//  Instructions:
    //  Create a function that takes a non-negative integer n as input, and returns a list of all the powers of 2 with the exponent ranging from 0 to n (inclusive).

//  Examples:
    //  Input: 2
    //  Math: 2^0, 2^1, 2^2
    //  Output: [1, 2, 4]

    //  Input: 5
    //  Math: 2^0, 2^1, 2^2, 2^3, 2^4, 2^5
    //  Output: [1, 2, 4, 8, 16, 32]

//  ⌺ Black Diamond Challenge:
    //  Create another function. This time, return all powers of N with the exponent ranging from 0 to n (inclusive).
    //  Input: 4, Output: [1, 4, 16, 64, 256]

import Foundation

func allPowers(n: Int) -> [Int] {
    guard n > 0 else {return [0]}
    
    var array: [Int] = []
    for number in 0...n {
        array.append(Int(pow(2, Double(number))))
    }
    return array
}

print(allPowers(n: 2))
print(allPowers(n: 4))
print(allPowers(n: 5))

func allPowers2(n: Int) -> [Int] {
    guard n > 0 else {return [0]}
    
    var array: [Int] = []
    for number in 0...n {
        array.append(Int(pow(Double(n), Double(number))))
    }
    return array
}

print(allPowers2(n: 4))
