//  🏔️ MTECH Code Challenge SF18: "Subset of an Array"
//  Concept: Practice accessing a set of data in an array that is not the entire array; practice using index subscripting

//  Instructions:
    //  Create a function take that takes an Array<Int> and an Int, n, and returns an Array<Int> containing the first up to n elements from the array.

//  Examples:
    //  Input: [15,5,6,7,2,3,45,12], 3
    //  Output: [15,5,6]

//  ⌺ Black Diamond Challenge:
    //  Create another function. This time, return the first and last n elements of the array. If the first and last n elements overlap (i.e., 3 first and 3 last in a 5 element array), return the whole array.

import Foundation

func splitArray(array: [Int], to num: Int) -> [Int] {
    Array<Int>(array[0..<num])
//    var newArray = [Int]()
//    for i in 0..<num {
//        newArray.append(array[i])
//    }
//    return newArray
}

func splitArray2(array: [Int], to num: Int) -> [Int] {
    if num * 2 >= array.count {
        return array
    }
    var slice1 = [Int]()
    var slice2 = [Int]()
    for i in 0..<num {
        slice1.append(array[i])
    }
    for i in 0..<num {
        slice2.insert(array[array.count - i - 1], at: 0)
    }
    return slice1 + slice2
}

print(splitArray(array: [3, 2, 5, 3, 6, 8, 45], to: 3))
print(splitArray(array: [3, 2, 5, 3, 6, 8, 45], to: 5))
print(splitArray(array: [3, 2, 5, 3, 6, 8, 45], to: 2))

print(splitArray2(array: [3, 2, 5, 3, 6, 8, 45], to: 3))
print(splitArray2(array: [3, 2, 5, 3, 6, 8, 45], to: 2))
print(splitArray2(array: [3, 2, 5, 3, 6, 8, 45], to: 1))
print(splitArray2(array: [3, 2, 5, 3, 6, 8, 45], to: 4))
