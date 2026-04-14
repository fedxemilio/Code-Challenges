//  🏔️ MTECH Code Challenge TP01: "Reverse Alphabetical"
//  Concept: Practice manipulating arrays; learn basic built-in Swift methods that you'll use every day

//  Instructions:
    //  Alphabetically reverse sort an array of strings.

//  Examples:
    //  Input: ["Bob", "Jill", "Sally"], Output: ["Sally", "Jill", "Bob"]
    //  Input: ["Vern", "Gidget", "Zeb"], Output: ["Zeb", "Vern", "Gidget"]

//  ⌺ Black Diamond Challenge:
    //  Create another function. This time, sort every word's letters reverse alphabetically, then sort all words in the array. You do not need to retain the case of the characters.
    //  Input: ["Bob", "Jill", "Sally"]
    //  Output: ["llji", "obb", "yslla"]

import Foundation

func reverseSort(arr: [String]) -> [String] {
    return arr.sorted(by: {$0 > $1})
}

let arr1 = ["Bob", "Jill", "Sally"]

print(reverseSort(arr: arr1))

func reverseAll(arr: [String]) -> [String] {
    var newArr = arr.map( {$0.sorted(by: >)} )
    print("This is: \(newArr)")
    return arr
}
reverseAll(arr: arr1)
