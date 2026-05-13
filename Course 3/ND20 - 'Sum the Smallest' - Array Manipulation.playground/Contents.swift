//  🏔️ MTECH Code Challenge ND20: "Sum the Smallest"
//  Concept: Practice sorting and manipulating arrays.

//  Instructions:
    //  Create a function take that takes an Array<Int> and returns an Int
    //  The output of your function is the sum of the two smallest positive numbers in the array.
    //  If the array has too few positive integers, return nil.

//  Examples:
    //  Input: [19, 5, 42, 2, 77, -5]
    //  Output: 7

//  ⌺ Black Diamond Challenge:
    //  Extend the function to handle an additional optional parameter, another array of Ints called 'exclude'.
    //  The function should return the sum of the two smallest positive numbers in the array that are not in the 'exclude' array.
    //  If there are too few positive integers left after excluding the specified numbers, return nil.

import Foundation

func sumOfSmallest(_ array: [Int], exclude: [Int]) -> Int? {
//    let exclude = Set(exclude)
    var arr = array.filter( { $0 > 0 && !exclude.contains($0)})
    
    guard let min = arr.min() else { return nil }
    
    if let index = arr.firstIndex(of: min) {
        arr.remove(at: index)
    }
    
    if let min2 = arr.min() {
        return min + min2
    }
    return nil
}

let array1 = [19, 5, 42, 2, 77, -5]

print(sumOfSmallest(array1, exclude: []) ?? "too few positives")
print(sumOfSmallest(array1, exclude: [2]) ?? "too few positives")
print(sumOfSmallest(array1, exclude: [2, 5]) ?? "too few positives")
print(sumOfSmallest(array1, exclude: [2, 5, 19]) ?? "too few positives")
print(sumOfSmallest(array1, exclude: [2, 5, 19, 42]) ?? "too few positives")
print(sumOfSmallest(array1, exclude: [2, 5, 19, 44, 77]) ?? "too few positives")

func aliceFunc(_ array: [Int]) -> Int {
    var min1 = Int.max
    var min2 = Int.max
    for value in array where value >= 0 && value < min1 {
        min2 = min1
        min1 = value
    }
    return min1 + min2
}

print(aliceFunc(array1))
