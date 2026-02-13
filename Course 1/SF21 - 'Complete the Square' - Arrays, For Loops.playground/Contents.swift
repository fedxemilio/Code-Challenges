//  🏔️ MTECH Code Challenge SF12: "Complete the Square"
//  Concept: Solve simple math problems while working with arrays and loops

//  Instructions:
//      Create a function called completeTheSquare.
//      The function will take an array of ints and will return a single int
//      The function should A) square each number in the array, and then B) add the total of all squared numbers together.

//  Examples:
//    Input:
//      [1, 2, 2]
//    Math:
//      [1^2, 2^2, 2^2]
//      1^2 + 2^2 + 2^2
//    Output:
//      9

//  ⌺ Black Diamond Challenge:
//      Add a new function with the same name but one more parameter, exponent. Raise each number in the array by the given exponent, then return the sum.

import Foundation

func completeTheSquare(array: [Int]) -> Int {
    let squaredArr = array.map {$0 * $0}
    var total = 0
    for num in squaredArr {
        total += num
    }
    return total
}

func completeTheSquare2(array: [Int], exponente: Int) -> Int {
    // let squaredArr = array.map {Int(pow(Double($0), Double(exponente)))}
    var newArray: [Int] = []
    for value in array {
        var num = value
        for i in 1..<exponente {
            num *= value
        }
        newArray.append(num)
    }
    var total = 0
    for num in newArray {
        total += num
    }
    return total
}

print(completeTheSquare(array: [1, 2, 2]))
print(completeTheSquare2(array: [1, 2, 2], exponente: 2))
