//  🏔️ MTECH Code Challenge TP06: "Date Formatting"
//  Concept: Practice working with Date objects

//  Instructions:
    //  Create a function that returns a date from a given string.
    //  The string will always be in the format "yyyy-mm-dd".

//  Examples:
    //  Input: "1992-12-20"
    //  Output: Optional(1992-12-20 07:00:00 +0000)

    //  Input: "2001-50-90" (invalid date)
    //  Output: nil

//  ⌺ Black Diamond Challenge:
    //  Make a function that does the reverse (takes in a Date object and returns a String). Output the string in the format "Dec 20, 1992".

import Foundation

//func convertToDate(_ dateString: String) -> Date? {
//    let dateFomatter = DateFormatter()
//}

let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]

let daysInMonth = ["Jan": 31, "Feb": 29, "Mar": 31, "Apr": 30, "May": 31, "Jun": 30, "Jul": 31, "Aug": 31, "Sep": 30, "Oct": 31, "Nov": 30, "Dec": 31]

func convertToDate2(_ dateString: String) -> String? {
    var dateArray = dateString.split(separator: "-")
    guard let month = Int(dateArray[1]) else {return nil}
    
    if Int(dateArray[2]) ?? 0 <= daysInMonth[months[month - 1]] ?? 0 {
        return "\(months[month - 1]) \(dateArray[2]), \(dateArray[0])"
    }
    return nil
//    return "\(months[month - 1]) \(dateArray[2]), \(dateArray[0])"
}

let date1 = "1992-12-20"

print(convertToDate2(date1) ?? "Nope")
