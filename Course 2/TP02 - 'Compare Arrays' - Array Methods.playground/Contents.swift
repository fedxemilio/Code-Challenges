//  🏔️ MTECH Code Challenge TP02: "Compare Arrays"
//  Concept: Practice manipulating arrays; learn basic built-in Swift methods that you'll use every day

//  Instructions:
    // Write a function that takes in two arrays of Strings.
    //  This function should keep track of which elements in either array do not also appear in the other array.
    //  Return a new array of those unique elements

//  Examples:
    //  Input: 
        //  array1: ["Monday", "Tuesday", "Wednesday"], array2: ["Wednesday", "Friday", "Saturday"]
    //  Output:
        //  ["Monday", "Tuesday", "Friday", "Saturday"]

//  ⌺ Black Diamond Challenge:
    //  In another function, return only the items that occur in both arrays.
    //  In another function, use sets to accomplish the same goal.

import Foundation

func uniqueSet(arr1: [String], arr2: [String]) -> [String] {
    var newArr: [String] = []
    for word in arr1 {
        if arr2.contains(word) {
            continue
        } else { newArr.append(word) }
    }
    for word in arr2 {
        if arr1.contains(word) {
            continue
        } else { newArr.append(word) }
    }
    return newArr
}

let array1 = ["Monday", "Tuesday", "Wednesday"]
let array2 = ["Wednesday", "Friday", "Saturday"]

print(uniqueSet(arr1: array1, arr2: array2))

func sharedSet(arr1: [String], arr2: [String]) -> [String] {
    var newArr: [String] = []
    for word in arr1 {
        if arr2.contains(word) {
            newArr.append(word)
        }
    }
    return newArr
}

print(sharedSet(arr1: array1, arr2: array2))

func sharedSet2(arr1: [String], arr2: [String]) -> [String] {
    let newArr = Set(arr1 + arr2)
    var newNewArr: [String] = []
    for word in newArr {
        if !arr1.contains(word) {
            newNewArr.append(word)
        }
    }
    return newNewArr
}

print(sharedSet2(arr1: array1, arr2: array2))
