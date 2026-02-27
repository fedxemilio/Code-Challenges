//  🏔️ MTECH Code Challenge SF34: "Target Practice"
//  Concept: Practice looping through an array to find multiple values and evaluate their relationship; optionally, discuss with instructor time complexity

//  Instructions:
    //  Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
    //  You can return the answer in any order.

//  Examples:
    //  Input: nums = [2,7,11,15], target = 9
    //  Output: [0,1]
    //  Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

    //  Input: nums = [3,2,4], target = 6
    //  Output: [1,2]

    //  Input: nums = [3,3], target = 6
    //  Output: [0,1]

//  ⌺ Black Diamond Challenge:
    //  Consider if this function was given a very large array to work with, of say 10,000 integers, with a very high target value.
    //  If your solution involved looping through the array for each number, the time that it would take to complete the function would increase exponentially. In a comment, explain why this is.
    //  There is another solution to this problem that does not take as long, though it may be difficult at this stage in your progress to know how to code it. In a comment, brainstorm how that secondary solution might work.

import Foundation

func addToTarget(_ arr: [Int], _ target: Int) -> (Int, Int)? {
    for index in 0...arr.count - 2 {
        for next in index + 1...arr.count - 1 {
            if arr[index] + arr[next] == target {
                return (index, next)
            }
        }
    }
    return nil
}

let arr1 = [2,7,11,15]
let arr2 = [3,2,4]
let arr3 = [3,3]

print(addToTarget(arr1, 9) ?? "Nothing to see here.")
print(addToTarget(arr2, 6) ?? "Nothing to see here.")
print(addToTarget(arr3, 6) ?? "Nothing to see here.")

// for each new value in an array the function will extend all previous loops by +1 values and execute +1 loops.

func addToTarget2(_ arr: [Int], _ target: Int) -> (Int, Int)? {
    for index in 0...arr.count - 2 {
        let remainder = target - arr[index]
        let newArr = arr[(index + 1)...]
        if newArr.contains(remainder) {
            return (index, newArr.firstIndex(of: remainder)!)
        }
    }
    return nil
}

print(addToTarget2(arr1, 9) ?? "Nothing to see here.")
print(addToTarget2(arr2, 6) ?? "Nothing to see here.")
print(addToTarget2(arr3, 6) ?? "Nothing to see here.")
