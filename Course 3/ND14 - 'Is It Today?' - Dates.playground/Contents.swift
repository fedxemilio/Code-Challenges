//  🏔️ MTECH Code Challenge ND14: "Is It Today?"
//  Concept: Practice navigating the complexities of Date objects

//  Instructions:
    //  Write a simple function that takes a Date as a parameter and returns a Boolean representing whether the date is today or not.
    //  Make sure that your function does not return a false positive by only checking the day--the year needs to be correct, as well.

//  Examples:
    //  Input: A date representing 7/26/24 @ 9:29:30 AM
    //  Today is: 7/26/24 @ 10:45:55 AM
    //  Output: true

    //  Input: A date representing 7/26/99 @ 10:45:55 AM
    //  Today is: 7/26/24 @ 10:45:55 AM
    //  Output: false (different years)

//  ⌺ Black Diamond Challenge:
    //  Create another function, once again taking a Date as a parameter and comparing it to the current Date. This time, output whether it is within the same hour of the day as the given Date (i.e., the Date parameter is at 9:45 and it is currently 9:15, return true as it is 9:00)

import Foundation

func isToday(_ date: Date) -> Bool {
    Calendar.current.isDateInToday(date)
}

let todayNow = Date()

print(isToday(todayNow))


func isSameHour(_ date: Date) -> Bool {
    let today = Date()
    
    return Calendar.current.isDate(date, equalTo: today, toGranularity: .hour)
}

func isSameHour2(_ date: Date) -> Bool {
    let now = Date()
    let hour = Calendar.current.component(.hour, from: now)
    
    return hour == Calendar.current.component(.hour, from: date)
}

var components = DateComponents()
components.year = 1997
components.month = 2
components.day = 14
components.hour = 13
components.minute = 5
components.second = 31

var formatter = DateFormatter()
formatter.dateFormat = "yyyy/MM/dd HH:mm"
formatter.timeZone = TimeZone(abbreviation: "UTC")

if let date = Calendar.current.date(from: components) {
    print(isSameHour(date))
}

if let date = formatter.date(from: "2026/05/01 13:00") {
    print(isSameHour(date))
}
