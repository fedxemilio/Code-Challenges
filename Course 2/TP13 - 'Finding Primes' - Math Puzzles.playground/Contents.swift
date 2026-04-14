//  🏔️ MTECH Code Challenge TP13: "Finding Primes"
//  Concept: Solve common math problems in Swift

//  Instructions:
    //  Create a function that checks to see if a given Int is a prime number. Return true if it is. Return false if it is not.

//  Examples:
    //  Input: 7
    //  Output: True

    //  Input: 12
    //  Output: False

//  ⌺ Black Diamond Challenge:
    //  Create a function that generates a list of prime numbers up to a given Int.
    //  The function should return an array of Ints containing all the prime numbers up to and including the given number.

import Foundation

func isPrime(_ num: Int) -> Bool {
    let number: Double = 14.0
    let squareRootValue = number.squareRoot()
    let roundedSquareRoot = squareRootValue.rounded()
    let intSquareRoot = Int(roundedSquareRoot)
    
    for x in 2...intSquareRoot {
        if num % x == 0 {
            return false
        }
    }
    return true
}

print(isPrime(7))
print(isPrime(12))

func findPrimes(_ num: Int) -> [Int] {
    var primes: [Int] = []
    for number in 2...num {
        if isPrime(number) {
            primes.append(number)
        }
    }
    return primes
}

print(findPrimes(100))
