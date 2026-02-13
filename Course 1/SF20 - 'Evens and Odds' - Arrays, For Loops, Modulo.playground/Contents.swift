//  🏔️ MTECH Code Challenge SF11: "Evens and Odds"
//  Concept: Practice using for loops to iterate through an array; practice using the modulo operator to find evens and odds

//  Instructions:
//      1) Write a function that takes in an array of Int's
//          The function will not return anything
//      2) Loop through the array. If the number is even print "num: Even" If the number is odd print "num: Odd"
//      3) When printing, "num" should be replaced with the number

//  Examples:
//      Input:
//          [1,2,3]
//      Output:
//          "1: Odd"
//          "2: Even"
//          "3: Odd"

//  ⌺ Black Diamond Challenge:
//    Add another function. This time, take a minimum and maximum Int, then print every number in that range.
//      Input:
//          (min: 10, max: 13)
//      Output:
//          "10: Even"
//          "11: Odd"
//          "12: Even"
//          "13: Odd"

import Foundation

func printEvenOdd(_ arr: [Int]) {
    for num in arr {
        if num % 2 == 0 {
            print("Even")
        } else { print("Odd")}
    }
}

printEvenOdd([1, 2, 3])
printEvenOdd([5, 0, 18, -1])

func printEvenOdd2(_ min: Int, _ max: Int) {
    if min >= max {
        return
    }
    for num in min...max {
        print("\(num): \(num%2==0 ? "Even": "Odd")")
    }
}

printEvenOdd2(2, 5)
printEvenOdd2(5, 2)
printEvenOdd2(0, 10)

