//  🏔️ MTECH Code Challenge TP08: "Print Plurals"
//  Concept: Practice looping over an array of data and analyzing its contents

//  Instructions:
    //  Write a function that takes in an array of strings. Print all the plural strings that end in 's'

//  Notes:
    //  You do not need to worry about irregular plurals ("deer", "geese")
    //  You do not need to worry about other words that end in 's' ("class", "GPS")

//  Examples:
    //  Input: ["Apple", "Oranges", "Pineapple", "Bananas", "Grapes", "Raspberry"]
    //  Output:
        //  Oranges
        //  Bananas
        //  Grapes

//  ⌺ Black Diamond Challenge:
    //  Write an answer to the following question as a comment: What do you think it would involve to write a function that does identify irregular plurals and exclude words that happen to end in 's'? What would you have to do to accomplish that?
    //  Write another function that converts all singular strings in an array to plural, but does not add an 's' if they are already plural. (You still do not need to worry about irregular plurals.)
    //  Input: ["Apple", "Oranges", "Pineapple", "Bananas", "Grapes"]
    //  Output: Apples, Oranges, Pineapples, Bananas, Grapes

import Foundation

func printPlurals(_ arr: [String]) {
    let newArr = arr.filter({$0.last == "s"})
    print(newArr)
}

let list1 = ["Apple", "Oranges", "Pineapple", "Bananas", "Grapes", "Raspberry"]
printPlurals(list1)

//You would need a collection of those words that do not follow the rule. 

func pluralsizeAll(_ arr: [String]) -> [String] {
    var newArr: [String] = []
    for item in arr {
        newArr.append(item.last == "s" ? item: item + "s")
//        if item.last != "s" {
//            newArr.append(item + "s")
//        } else {
//            newArr.append(item)
//        }
    }
    return newArr
}

print(pluralsizeAll(list1))


