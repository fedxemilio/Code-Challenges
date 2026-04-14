//  🏔️ MTECH Code Challenge TP11: "Factorial"
//  Concept: Practice using recursive functions or while loops to perform a task repeatedly until complete; practice converting mathematical formulae to Swift code

//  Instructions:
    //  Factorial is a mathematical function where, for any integer 'n', you find the product of multiplying all integers less than (and including) n together. It is usually represented by an '!' in math.
        // 5! would include all integers less than 5, so 1, 2, 3, and 4. 5! is a shorthand way of writing 5 * 4 * 3 * 2 * 1.
    //  Create a function that accepts an Int parameter 'n' and returns 'n!' as described above.

//  Notes:
    //  Even though there are no positive integers less than 0, 0! = 1.
    //  You can assume the input will always be positive.

//  Examples:
    //  Input: factorial(0), Output: 1
    //  Input: factorial(1), Output: 1

    //  Input: factorial(3)
    //  Math: 1 * 2 * 3 = 6
    //  Output: 6

    //  Input: factorial(4)
    //  Math: 1 * 2 * 3 * 4 = 24
    //  Output: 24

//  ⌺ Black Diamond Challenge:
    //  Learn about double factorials, then add another function that calculates those instead: 🔗https://en.wikipedia.org/wiki/Double_factorial
    //  Learn about primorials, then add another function that calculates those instead: 🔗https://en.wikipedia.org/wiki/Primorial

import Foundation

func factorial(_ base: Int) -> Int {
    var base = base
    var product = 1
    while base > 0 {
        product *= base
        base -= 1
    }
    return product
}

print(factorial(3))
print(factorial(4))

func factorial2(_ base: Int) -> Int {
    if base > 0 {
        return base * factorial(base - 1)
    }
    return 1
}

print(factorial2(3))
print(factorial2(4))

func doubleFactorial(_ base: Int) -> Int {
    let even: Bool = base % 2 == 0
    var base = base
    var product = 1
    while base > 0 {
        if base % 2 == (even ? 0: 1) {
            product *= base
        }
        base -= 1
    }
    return product
}

print(doubleFactorial(3))
print(doubleFactorial(4))
print(doubleFactorial(5))
print(doubleFactorial(6))

func primorial(_ num: Int) -> Int {
    var count = 1
    var num = num
    var primes: [Int] = []
    while primes.count < num {
        
    }
}
