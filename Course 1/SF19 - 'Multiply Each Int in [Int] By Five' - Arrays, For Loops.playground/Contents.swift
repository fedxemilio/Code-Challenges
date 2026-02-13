//  🏔️ MTECH Code Challenge SF10: "Name, Age, and Pi"
//  Concept: Practice looping over arrays

//  Instructions:
    //  Create a function that takes in an array of Int's as a parameter
    //  You will need to multiply each Int in the array by 5.
    //  The function will return the array of new Ints.

//  ⌺ Black Diamond Challenge:
    //  Create a second function for the same purpose. Return an array of Ints without using a for loop. (This will require a special method -- look it up!)

import Foundation

func listTimesFive(_ list: [Int]) -> [Int] {
    var newList: [Int] = []
    for num in list {
        let newNum = num * 5
        newList.append(newNum)
    }
    return newList
}

func listTimesFive2(_ list:  [Int]) -> [Int] {
    return list.map {$0 * 5}
}

let thisList = [2, 4, 6, 5]
let thatList = [9, 8, 7, 6, 54, 321, 0]

print(listTimesFive(thisList))
print(listTimesFive(thatList))

print(listTimesFive2(thisList))
print(listTimesFive2(thatList))
