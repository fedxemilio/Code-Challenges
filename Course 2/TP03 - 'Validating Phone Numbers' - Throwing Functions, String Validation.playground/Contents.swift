//  🏔️ MTECH Code Challenge TP03: "Validating Phone Numbers"
//  Concept: Practice validating inputs to make sure they're what you're expecting; practice formatting text (you'll have to do this all the time!); practice using throwing functions to produce errors when something goes wrong

//  Instructions:
    // The API you're using needs a specific format for phone numbers: (xxx)-xxx-xxxx.
    // Write a throwing function that takes in a string and returns a formatted phone string, or throws if the string that was passed in is not a valid phone number.

//  Examples:
    //  Input: "5558675309"
    //  Output: "(555)-867-5309"

    //  Input: "phone number"
    //  Output: no output produced, error thrown and caught instead

//  ⌺ Black Diamond Challenge:
    //  Add a parameter to your function that allows you to select a country from an enum of supported phone number formats. Make it so your app successfully validates and formats phone numbers for three other countries.
    //  You can find phone number formats here: 🔗https://en.wikipedia.org/wiki/National_conventions_for_writing_telephone_numbers

import Foundation

func formatPhoneNumber(_ number: String) -> String? {
    var first = ""
    var middle = ""
    var last = ""
    
    for (index, num) in number.enumerated() {
        if index < 3 {
            first.append(num)
        } else if index < 7 {
            middle.append(num)
        } else { last.append(num)}
    }
    
    guard number.count == 10 else {return nil}
    if let intergers = Int(number) {
        return "(\(first))-\(middle)-\(last)"
    }
    return nil
}

let number1 = "5558675309"

print(formatPhoneNumber(number1) ?? "nothing")

