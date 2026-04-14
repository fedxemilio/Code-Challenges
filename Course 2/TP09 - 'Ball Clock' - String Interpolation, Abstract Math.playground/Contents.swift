//  🏔️ MTECH Code Challenge TP09: "Ball Clock" 🪩🕰️
//  Concept: Practice breaking down unique and abstract problems into their component mathematical parts and then translate that into code; use string interpolation

//  Instructions:
    //  Observe the photo of the ball clock: 🔗https://tinyurl.com/3pacct63
        //  The ball clock works by using a number of balls in a minutes place, a five minutes place, and an hours place. The clock in the picture is showing 7:38 (7 hours, 7 five minutes (or 35), and 3 regular minutes).
        //  Each time minute a ball is added; if it fills the row it's on, the row will tilt, empty out the balls, and add one of them to the next row. (You don't need to know this for the challenge, it's just neat.)
    //  Write a function that accepts 3 ball counts (one for each row) and returns a description of the time represented by those counts.

//  Examples:
    //  Input: timeString(hr: 7, fiveMin: 7, min: 3)
    //  Output: "The current time is 7:38"

    //  Input: timeString(hr: 1, fiveMin: 0, min: 0)
    //  Output: "The current time is 1:00"

//  ⌺ Black Diamond Challenge:
    //  Do it in reverse. Build a function that has one parameter that accepts a Date object, and returns 3 ball counts of what the clock would show at a specific time of day.

import Foundation

func timeString(from ballCounts: (hr: Int, fiveMin: Int, min: Int)) -> String {
    return "The current time is \(ballCounts.hr):\(ballCounts.fiveMin * 5 + ballCounts.min)"
//    return "Fix me to return the actual time based on these 👆 counts"
}

func timeString2(hr: Int, fiveMin: Int, min: Int) -> String {
    return "The current time is \(hr):\(fiveMin * 5 + min)"
}

let ballCounts = (7, 7, 3)

print(timeString(from: ballCounts))
print(timeString2(hr: 7, fiveMin: 7, min: 3))


func timeBalls(from date: Date) -> [Int] {
    let hour: Int = Calendar.current.component(.hour, from: date)
    let minute: Int = Calendar.current.component(.minute, from: date)
    
    return [hour % 12, minute / 5, minute % 5]
}

let now = Date()

print(timeBalls(from: now))

func timeBalls2(from date: Date) -> (hr: Int, fiveMin: Int, min: Int) {
    let hour: Int = Calendar.current.component(.hour, from: date)
    let minute: Int = Calendar.current.component(.minute, from: date)
    
    return (hr: hour % 12, fiveMin: minute / 5, min: minute % 5)
}

print(timeBalls2(from: now))
