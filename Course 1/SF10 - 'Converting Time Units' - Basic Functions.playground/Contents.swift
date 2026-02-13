//  🏔️ MTECH Code Challenge SF26: "Converting Time Units"
//  Concept: Practice an easy time-unit conversion problem to prepare for future challenges relating to time

//  Instructions:
    //  Your task is to write a function which returns the time since midnight in milliseconds.
    //  Your input will consist of three Int parameters which represent hours, minutes, and seconds, respectively.

//  Examples:
    //  Input: h: 0, m: 1, s: 1
    //  Output: 61000

//  ⌺ Black Diamond Challenge:
    //  Create an inverse function that takes an input in milliseconds and returns the hours, minutes, and seconds as either a tuple or a string.

import Foundation

func millisecondsSinceMidnight(hours: Int, minutes: Int, seconds: Int) -> Int {
    return hours * 3_600_000 + minutes * 60_000 + seconds * 1_000
}

millisecondsSinceMidnight(hours: 0, minutes: 1, seconds: 1)
millisecondsSinceMidnight(hours: 4, minutes: 4, seconds: 4)
millisecondsSinceMidnight(hours: 10, minutes: 10, seconds: 1)

func timeSinceMidnight(milliseconds: Int) -> String {
    var millisecondsLeft = milliseconds
    var intHours = millisecondsLeft / 3_600_000
    // hours = millioseconds / 3600000
    millisecondsLeft -= intHours * 3_600_000
    
    var intMinutes = millisecondsLeft / 60_000
    // minutes = milliseconds % 3_600_000 / 60_000
    millisecondsLeft -= intMinutes * 60_000
    
    var intSeconds = millisecondsLeft / 1_000
    // seconds = milliseconds % 3_600_000 % 60_000 / 1000
    return ("\(intHours) hours \(intMinutes) minutes \(intSeconds) seconds since midnight")
}

timeSinceMidnight(milliseconds: 61000)
timeSinceMidnight(milliseconds: 78_065_000)
