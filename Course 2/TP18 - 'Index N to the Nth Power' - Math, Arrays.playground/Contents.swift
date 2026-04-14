//  🏔️ MTECH Code Challenge TP18: "Index N to the Nth Power"
//  Concept: Practice manipulating data in an array using index subscripting; convert simple math into Swift code

//  Instructions:
    //  Create a function that accepts as input an array with positive numbers and a non-negative number N, and outputs an optional Int.
    //  You should return the N-th power of the element in the array with the index N.

//  Notes:
    //  If N is outside of the array, then return nil.
    //  Don't forget that the first element has the index 0.

//  Examples:
    //  Input: array = [1, 2, 3, 4] and N = 2
    //  Logic: 3^2 == 9;
    //  Output: 9

    //  Input: array = [1, 2, 3] and N = 3
    //  Logic: N is outside of the array, so the result is nil.
    //  Output: nil

//  ⌺ Black Diamond Challenge:
    //  Create another function. This one should accept just an array, and return an array where every element has been raised to the nth power, where n is its index in the array.
    //  Input: [6, 4, 2]
    //  Math: 6^0 = 1, 4^1 = 4, 2^2 = 4
    //  Output: [1, 4, 4]

import Foundation

func pow(_ base: Int, by exponent: Int) -> Int {
    guard exponent != 0 else {return 1}
    
    var result = base
    for x in 1..<abs(exponent) {
        result *= base
    }
    return result
}

func indexNtoPowerN(_ array: [Int], _ N: Int) -> Int? {
    guard N >= 0 && N < array.count else {return nil}
    
    return pow(array[N], by: N)
}

print(indexNtoPowerN([1, 2, 3, 4], 2) ?? "None")

func raiseByIndexPow(_ array: [Int]) -> [Int] {
//    return array.map { pow($0, by: indexOf($0))}
    var newArray: [Int] = []
    var index = 0
    for item in array {
        newArray.append(pow(item, by: index))
        index += 1
    }
    return newArray
}

let array1 = [6, 4, 2]

print(raiseByIndexPow(array1))

