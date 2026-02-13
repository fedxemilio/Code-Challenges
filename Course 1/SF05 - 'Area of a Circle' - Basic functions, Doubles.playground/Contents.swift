//  🏔️ MTECH Code Challenge SF05 - "Area of a Circle"
//  Concept: Practice translating math equations into Swift functions; practice using Doubles

//  Instructions:
    //  Create a function that finds the area of a circle. The function will take in an Int as a parameter. This will be the radius of the circle.
    //  The function should return the area of the circle as a Double.
    //  You may simply use "3.14" to represent pi.

func areaOfCircle(radius: Int) -> Double {
    let pi = 3.14
    return pi * Double(radius) * Double(radius)
}

//  Hint:
    //  This is not a test of your knowledge of how to find the area of a circle.

//  ⌺ Black Diamond Challenge:
    //  Find out how to get the exact value of pi in Swift and change your code to use it.

func realAreaOfCircle(radius: Int) -> Double {
    Double.pi * Double(radius) * Double(radius)
}

func pow(base: Int, exponent: Int) -> Int {
    let base = base
    var num = base
    for x in 0...exponent {
        num *= base
    }
    return num
}

let radius: Double = 2
print(pow(radius, 5))

func betterAreaOfCircle(radius: Int) -> Double {
    Double.pi * Double(pow(base: radius, exponent: 2))
}

import Foundation

