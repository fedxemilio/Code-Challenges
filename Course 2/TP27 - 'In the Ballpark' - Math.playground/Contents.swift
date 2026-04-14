//  🏔️ MTECH Code Challenge TP27: "In the Ballpark" ⚾️
//  Concept: Evaluate data with custom parameters

//  Instructions:
    //  Create a function called ballparkCompare that accepts 3 integers: a, b, and an optional margin. It should return an integer.
    //  The function should identify whether a is lower than, close to, or higher than b.
    //  We will consider "a" in the ballpark of "b" if the distance between a and b is less than the margin value.
        //  When a is close to b, return 0.
        //  When a is less than b, return -1.
        //  When a is greater than b, return 1.

//  Notes:
    //  If margin is not given or is less than 0, treat it as zero.

//  Examples:
    //  Input: (a: 103, b: 880, margin: 300)
    //  Output: -1

    //  Input: (a: 39, b: 10, margin: 50)
    //  Output: 0

//  ⌺ Black Diamond Challenge:
    //  Enhance the ballparkCompare function to accept two additional optional parameter called "rounding" and "roundValue".
    //  The "rounding" parameter should be an enum with cases for "up", "down", and "nearest".
    //  If "rounding" is provided, the function should round the values of a and b before comparing them, according to the rounding rule specified
    //  Round the numbers to the nearest multiple of the roundValue (i.e., if roundValue is 30, then 77 would round to 90)
    //  Ensure that the function still considers the margin when comparing the rounded values.

import Foundation

func ballparkCompare(a: Int, b: Int, margin: Int = 0) -> Int {
    if abs(a - b) < margin {
        return 0
    } else if a < b {
        return -1
    } else {
        return 1
    }
}

print(ballparkCompare(a: 103, b: 880, margin: 300))
print(ballparkCompare(a: 39, b: 10, margin: 50))

enum Rounding {
    case up, down, nearest
}


func ballparkCompare(a: Int, b: Int, margin: Int = 0, rounding: Rounding, roundValue: Int) -> Int {
    var aVal = a
    var bVal = b
    
    var a = aVal.round(rounding, roundValue: roundValue)
    var b = bVal.round(rounding, roundValue: roundValue)
    
    if abs(a - b) < margin {
        return 0
    } else if a < b {
        return -1
    } else {
        return 1
    }
}

extension Int {
    mutating func round(_ direction: Rounding, roundValue: Int) {
        switch direction {
        case .up: return ((self + roundValue - 1) / roundValue) * roundValue
        case .down: return (self / roundValue) * roundValue)
        case .nearest: return (self / roundValue) * roundValue)
        }
    }
}
