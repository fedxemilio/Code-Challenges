//  🏔️ MTECH Code Challenge ND18: "Area Perimter"
//  Concept: Practice a simple math warmup

//  Instructions:
    //  You are given the length and width of a 4-sided polygon. The polygon can either be a rectangle or a square.
    //  If it is a square, return its area. If it is a rectangle, return its perimeter.

//  Examples:
    //  Input: 5, 5
    //  Logic: Square, area is length * width, so 5 * 5
    //  Output: 25

    //  Input: 10, 5
    //  Logic: Rectangle, perimeter is 2(length) + 2(width)
    //  Output: 30

//  ⌺ Black Diamond Challenge:
    //  Create a new function that takes three lengths for the three sides of a triangle. Calculate and return its perimeter and its area.

import Foundation

func giveAreaPerim(width: Int, length: Int) -> Int {
    if width == length {
        return width * length
    } else {
        return width * 2 + length * 2
    }
}

print(giveAreaPerim(width: 5, length: 5))
print(giveAreaPerim(width: 10, length: 5))

func calcTriangleArea(a: Int, b: Int, c: Int) -> (Perimeter: Int, Area: Double) {
    let perimeter = a + b + c
    let s: Double = Double(perimeter) / 2
    let area = (s * (s - Double(a)) * (s - Double(b)) * (s - Double(c))).squareRoot()
    return (perimeter, area)
}

print(calcTriangleArea(a: 3, b: 4, c: 5))
