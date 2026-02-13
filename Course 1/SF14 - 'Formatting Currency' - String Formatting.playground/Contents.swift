//  🏔️ MTECH Code Challenge SF32: "Formatting Currency"
//  Concept: Use string formatting to display a number in a specific format

//  Instructions:
    //  The company you work for has just been awarded a contract to build a payment gateway.
    //  In order to help move things along, you have volunteered to create a function that will take a float and return the amount formatting in dollars and cents.

//  Notes:
    //  The rest of your team will make sure that the argument is sanitized before being passed to your function, although you will need to account for adding trailing zeros if they are missing (though you won't have to worry about a dangling period).

// Examples:
    //  Input: 39.99, Output: "$39.99"
    //  Input: 3, Output: "$3.00"
    //  Input: 3.1, Output: "$3.10"

//  ⌺ Black Diamond Challenge:
    //  Create another function. Use a different method to convert the float to a currency than you did in the first.
    //  Look up the current conversion rate for USD -> JPY (yen). Create another function that will first convert the input to yen before outputting the formatted amount, prefixed with "¥" (the symbol for yen).

import Foundation

func giveCurrency(input: Float) -> String {
    let dollars = Int(input)
    let cents = (input - Float(dollars))
    let stringCents = String(cents).dropFirst(2)
    print(stringCents)
    var trailingZero = ""
    if stringCents.count < 1 {
        trailingZero += "00"
    } else if String(cents).count < 2 {
        trailingZero += "0"
    }
    return "$" + String(dollars) + "." + String(cents).dropFirst(2) + trailingZero
}

print(giveCurrency(input: 39.99))
print(giveCurrency(input: 3))
print(giveCurrency(input: 3.1))
