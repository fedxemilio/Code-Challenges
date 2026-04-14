//  🏔️ MTECH Code Challenge TP17: "Multiples to the Limit"
//  Concept: Practice translating mathematical functions into Swift code

//  Instructions:
    //  Create a function that takes two integers, integer and limit, and returns an array of the first integer's multiples, up to the limit.

//  Notes:
    //  If limit is a multiple of integer, it should be included.
    //  Only positive integers will be passed into the function, with limit always being higher than the base integer.

//  Examples:
    //  Input: 2, 10
    //  Output: [2, 4, 6, 8, 10]

    //  Input: 3, 11
    //  Output: [3, 6, 9]

//  ⌺ Black Diamond Challenge:
    //  Try writing the function in only one line of code.
    //  Make it so that your function only accepts positive integers and a limit higher than the base. Return nil or throw an error if not.



import Foundation

enum Error: LocalizedError {
    case nonpositiveInt
    case baseGreaterThanLimit
}

func getMultiples(of base: Int, to limit: Int) throws -> [Int] {
//    return Array(stride(from: base, through: limit, by: base))
    guard base > 0 else {throw Error.nonpositiveInt}
    guard limit > base else {throw Error.baseGreaterThanLimit}
    
    var multiples: [Int] = []
    for num in base...limit {
        if num % base == 0 {
            multiples.append(num)
        }
    }
    return multiples
    
}

print(try! getMultiples(of: 2, to: 10))
print(try! getMultiples(of: 3, to: 11))
