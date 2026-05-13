//  🏔️ MTECH Code Challenge ND01: "Sums in Strings"
//  Concept: Practice converting Strings to other types and evaluating data stored within them

//  Instructions:
    //  Create a function that takes a String as input and returns an Integer.
    //  Your task is to calculate the sum of the integers inside an input string.

//  Examples:
    //  Input: "The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog"
    //  Math: 30 + 20 + 10 + 0 + 1203 + 914 + 3 + 1349 + 102 + 4
    //  Output: 3635

//  ⌺ Black Diamond Challenge:
    //  Make another function. This one should also execute any mathematical operators contained in the string (+, -, /, * or x). If no operator separates two integers, add them by default. Thus, the string "13-3is10" would produce 20 (13 - 3 + 10).

import Foundation


func giveNum(_ string: String) -> Int {
    var runningTotal = 0
    var digitWord = ""
    
    for char in string {
        if let digit = Int(String(char)) {
            digitWord += String(char)
        } else {
            runningTotal += Int(digitWord) ?? 0
            digitWord = ""
        }
    }
    return runningTotal + (Int(digitWord) ?? 0)
}

let string1 = "The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog"

print(giveNum(string1))


func giveNum2(_ string: String) -> Int {
    var runningTotal = 0
    var digitWord = ""
    var currentOp = "+"
    
    for char in string {
        
        if let digit = Int(String(char)) {
            digitWord += String(char)
        } else {
            if currentOp == "+" {
                runningTotal += Int(digitWord) ?? 0
                
            }
            if currentOp == "-" {
                runningTotal -= Int(digitWord) ?? 0
                
            }
            if currentOp == "*" || currentOp == "x" {
                runningTotal *= Int(digitWord) ?? 0
                
            }
            if currentOp == "/" {
                runningTotal /= Int(digitWord) ?? 0
                
            }
            print(currentOp)
            digitWord = ""
            currentOp = "+"
            print(runningTotal)
        }
        
        if ["+", "-", "*", "/", "x"].contains(char) {
            currentOp = String(char)
        }
    }
    return runningTotal
}

print(giveNum2("13-3is10"))

enum Operator {
    case plus, minus, times, divide
}

func evaluate(total: Int, op: Operator, value: Int) -> Int {
    switch op {
    case .plus: return total + value
    case .minus: return total - value
    case .times: return total * value
    case .divide: return total / value
    }
}

func giveNum3(_ string: String) -> Int {
    var runningTotal = 0
    var digitWord = ""
    var currentOp: Operator = .plus
    
    for char in string {
        
        if let digit = Int(String(char)) {
            digitWord += String(char)
        } else {
            if char == "+" {
                runningTotal += Int(digitWord) ?? 0
                
            }
            if currentOp == "-" {
                runningTotal -= Int(digitWord) ?? 0
                
            }
            if currentOp == "*" || currentOp == "x" {
                runningTotal *= Int(digitWord) ?? 0
                
            }
            if currentOp == "/" {
                runningTotal /= Int(digitWord) ?? 0
                
            }
            print(currentOp)
            digitWord = ""
            currentOp = "+"
            print(runningTotal)
        }
        
        if ["+", "-", "*", "/", "x"].contains(char) {
            currentOp = String(char)
        }
    }
    return runningTotal
}
