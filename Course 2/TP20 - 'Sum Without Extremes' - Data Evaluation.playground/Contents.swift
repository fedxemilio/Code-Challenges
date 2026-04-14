//  🏔️ MTECH Code Challenge TP20: "Sum Without Extremes"
//  Concept: Practice accessing and evaluating a set of data in an array that is not the entire array

//  Instructions:
    //  Sum all the numbers of a given array, except the highest and the lowest element (by value, not by index!).

//  Notes:
    //  If there are multiple instances of the highest and lowest element, omit only one of them from your sum.
    //  If there are too few elements (less than 3) in your array such that no values can be summed, return 0.

//  Examples:
    //  Input: [15,5,6,7,2,3,22,12,22]
    //  Math: 3 + 5 + 6 + 7 + 12 + 15 + 22 = 70 (omitting 2 and a single instance of 22)
    //  Output: 70

//  ⌺ Black Diamond Challenge:
    //  Make it so that your function can be called like this:
    //  let sum = [1,2,3,4,5].sumWithoutExtremes()

import Foundation

func omitMaxMin(_ array: [Int]) -> Int {
    guard array.count > 2 else {return 0}
    
    let sortedArray = array.sorted()
    var count = 0
    
    for (index, value) in sortedArray.enumerated() {
        if index != 0 && index != sortedArray.count - 1 {
            count += value
        }
    }
    return count
}

let array1 = [15, 5, 6, 7, 2, 3, 22, 12, 22]

print(omitMaxMin(array1))

//
extension Array where Element == Int {
    func sumWithoutExtremes() -> Int {
        guard self.count > 2 else {return 0}
        
        let array = self.sorted()
        var count = 0
        
        for (index, value) in array.enumerated() {
            if index != 0 && index != array.count - 1 {
                count += value
            }
        }
        return count
    }
}

print(array1.sumWithoutExtremes())


extension Array where Element == Int {
    func sumWithoutExtremes2() -> Int {
        var count = 0
        
        var minValueUsed = false
        var maxValueUsed = false
        
        let minValue = self.min()
        let maxValue = self.max()
        
        for element in self {
            if element == minValue && !minValueUsed {
                minValueUsed = true
            } else if element == maxValue && !maxValueUsed{
                minValueUsed = true
            } else {
                count += element
            }
        }
        return count
    }
}

print(array1.sumWithoutExtremes2())
