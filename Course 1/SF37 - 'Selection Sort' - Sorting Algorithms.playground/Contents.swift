//  🏔️ MTECH Code Challenge SF37: "Selection Sort"
//  Concept: Learn about another common sorting algorithm and practice manipulating data in an array

//  Instructions:
    //  Just like your previous code challenges, you are not allowed to use the .sort() method
    //  Create a function that takes in an array of Ints. Sort the array using an selection sort
    //  A visualization of what an insertion sort is can be seen here: 🔗https://en.wikipedia.org/wiki/Selection_sort#/media/File:Selection-Sort-Animation.gif

//  Examples:
    //  Input: [-43, 6, -2, 29, 16]
    //  Output: [-43, -2, 6, 16, 29]

//  ⌺ Black Diamond Challenge:
    //  Read about Introsort, the actual sorting algorithm Apple has chosen to use in the Array.sort() method, as well as elsewhere. 🔗https://en.wikipedia.org/wiki/Introsort
    //  Like before, you are not expected to understand every element of the page, but take notes in a comment on this challenge about what you can glean from the information.

import Foundation

func selectionSort(_ arr: [Int]) -> [Int] {
    var newArr = arr
    for i in 0...arr.count - 1 {
        var minValue = newArr[i]
        for j in i...arr.count - 1 {
            if newArr[j] < newArr[i] {
                minValue = newArr[j]
            }
        }
        let oldValue = newArr[i]
        let oldIndex = newArr.firstIndex(of: minValue)!
        newArr[i] = minValue
        newArr[oldIndex] = oldValue
    }
    return newArr
}

let arr1 = [-43, 6, -2, 29, 16]
print(selectionSort(arr1))


func selectionSort2(_ arr: [Int]) -> [Int] {
    var arr = arr
    
    for (i, _) in arr.enumerated() {
        var minIndex = i
        
        for (j, value) in arr.enumerated() where j >= i {
            if value < arr[minIndex] {
                minIndex = j
            }
        }
        arr.swapAt(i, minIndex)
    }
    return arr
}

print(selectionSort2(arr1))

