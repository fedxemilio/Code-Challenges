//  🏔️ MTECH Code Challenge ND02: "The Monk and the Stairs"
//  Concept: Practice evaluating large datasets

//  Instructions:
    //  Suzuki wanted to estimate how many stairs he will climb over 20 years. For a year, he recorded the number of stairs he took on a in a notebook with seven pages. On Monday, he turned to the Monday page, and added another entry of how many stairs he took that day, allowing him to easily compare to every previous Monday tally already on the page. He did the same for each day of the week. After one year, his notebook was finished.

    //  Create a function that takes an array of arrays of Ints as input, and returns an Int.
    //  Each subarray represents one day of the week (one page in Suzuki's notebook).
    //  Your function's returned Int should be an estimate of how many years he will climb in 20 years. (In other words, return the total number of stairs he climbed this year, multiplied by twenty.)

//  Notes:
    //  Regardless of how he organized them, fundamentally all you need to do is find the total number of steps he climbed that year and multiply it by twenty to estimate his twenty year total.

//  ⌺ Black Diamond Challenge:
    //  Suzuki wants to know which days of the week he climbed more stairs on average. Assuming the input array's contents are organized as [sunday, monday, tuesday, wednesday, thursday, friday, saturday], find the average number of stairs climbed for each day, then output a string of the weekdays, presenting them in order highest to lowest average (i.e. "tuesday, friday, wednesday, thursday, monday, saturday, sunday")

import Foundation

func stepsIn20Years(_ steps: [[Int]]) -> Int {
    var yearSteps = steps.flatMap( { $0 } ).reduce(0, +)
    return yearSteps * 20
}

var sunday = [200, 132, 432, 53, 400]
var monday = [320, 12, 42, 153, 300]
var tuesday = [200, 222, 2432, 253, 200]
var wednesday = [300, 232, 332, 153, 500]
var thursday = [100, 32, 132, 153, 100]
var friday = [150, 152, 152, 153, 150]
var saturday = [20, 12, 42, 53, 40]

var year = [sunday, monday, tuesday, wednesday, thursday, friday, saturday]

print(stepsIn20Years(year))

func averageStepsByWeekday(_ steps: [[Int]]) -> String {
    let weekdays = ["sunday", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday"]
    var stepsDict: [String: Int] = [:]
    
    for (index, array) in steps.enumerated() {
        var num = array.reduce(0, +)
        stepsDict[weekdays[index]] = num
    }
    let sortedDays = stepsDict.sorted(by: { $0.value > $1.value })
    
    var finalString = ""
    for day in sortedDays {
        finalString += day.key + " "
    }
    return finalString
}

print(averageStepsByWeekday(year))
