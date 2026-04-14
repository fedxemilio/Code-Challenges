//  🏔️ MTECH Code Challenge TP14: "Wilson Primes"
//  Concept: Practice translating math concepts into Swift

//  Instructions:
    //  Wilson primes satisfy the following condition. Let P represent a prime number.
    //  ((P-1)! + 1) / P^2 = a whole number
    //  Your task is to create a function that returns true if the given number is a Wilson prime.

//  Examples:
    //  Input: 5 or 13 or 563
    //  Output: true

    //  Input: Any other number
    //  Output: False

//  ⌺ Black Diamond Challenge:
    //  There are three known Wilson primes. Create a function that outputs all three (by calculating them, not by hardcoding them as a literal).

import Foundation

extension Int {
    func isPrime() -> Bool {
        guard self > 3 else {return false}
        for divider in 2..<self {
            if self % divider == 0 {
                return false
            }
            
        }
        return true
    }
}

func factorial(_ num: Int) -> Int {
    if num < 1 {
        return 1
    } else {
        return num * (factorial(num - 1))
    }
}

func isWilsonPrime(_ n: Int) -> Bool {
    guard n > 1 && n.isPrime() else { return false }

    let modulus = n * n
    var result = 1

    for i in 2..<n {
        result = (result * i) % modulus
    }

    return result == modulus - 1
}

isWilsonPrime(563)

//for num in 1..<100 {
//    print("\(num) is \(isWilsonPrime(num))")
//}
