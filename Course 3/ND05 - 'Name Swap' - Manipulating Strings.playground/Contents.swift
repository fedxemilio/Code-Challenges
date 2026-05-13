//  🏔️ MTECH Code Challenge ND05: "Name Swap"
//  Concept: Practice manipulating the contents of strings algorithmically

//  Instructions:
    //  Write a function that takes a String as input and returns another String.
    //  The input string will be a first and last name. Return a string with the names swapped, last name first, first name last.

//  Example:
    //  Input: "john McClane"
    //  Output: "McClane john"

//  Notes:
    //  You can assume the input will always be a single pair of names, first and last.

//  ⌺ Black Diamond Challenge:
    //  Write another function that accepts a full name as input (first, middle, last) and returns a string in the format, "lastName, firstName middleInitial." Include the comma, abbreviate the middle initial to one letter and add a period.

import Foundation

func swapNames(_ nameString: String) -> String {
    let namesArr = nameString.split(separator: " ")
    return namesArr.reversed().joined(separator: " ")
}

print(swapNames("john McClane"))


func formatName(_ names: (first: String, middle: String, last: String)) -> String {
    guard !names.middle.isEmpty else { return "\(names.last), \(names.first)" }
    return "\(names.last), \(names.first) \(names.middle.first ?? " "). "
}

let firstName = "Fransisco"
let secondName = "Emilio"
let lastName = "Diquerson"
let names = (firstName, secondName, lastName)

let firstName2 = "Ann"
let secondName2 = ""
let lastName2 = "Smelli"
let names2 = (firstName2, secondName2, lastName2)

print(formatName(names))
print(formatName(names2))
