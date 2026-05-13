//  🏔️ MTECH Code Challenge ND04: "Binary to Decimal"
//  Concept: Practice moving between different representations of the same data

//  Instructions:
    //  Create a function that takes a String as input and returns an Int.
    //  The input string will be a binary number. Return it as a base 10 number.

    //  Helpful Link: 🔗https://www.cuemath.com/numbers/binary-to-decimal/

//  Examples:
    //  Input: 10010001
    //  Output: 145

//  ⌺ Black Diamond Challenge:
    //  Create another function that converts an Int to binary representation in a String.
    //  Add your functions as extensions of String and Int, respectively, so they can be called directly on any String or Int. You will need to also add input validation so you can be certain that a String is in binary format when the user tries to convert it; return nil if the input is invalid.

import Foundation

func base10(_ binary: String) -> Int? {
    if let base10 = Int(binary, radix: 2) {
        return base10
    }
    return nil
}

let binary1 = "10010001"

func base10Manual(_ binary: String) -> Int? {
    guard Int(binary) != nil else { return nil }
    
    var base = binary.count - 1
    var base10: Double = 0
    
    for digit in binary {
        if digit == "1" {
            base10 += pow(2, Double(base))
        }
        base -= 1
    }
    return Int(base10)
}

print(base10(binary1) ?? "invalid")
print(base10Manual(binary1) ?? "invalid")

//func binary(_ base10: Int) -> String {
//    var binaryString = ""
//    var base10 = base10
//    var base = 0
//    
//    while base10 > 0 {
//        var base = pow(2, Double(base))
//        if b
//    }
//}

