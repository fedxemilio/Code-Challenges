//  🏔️ MTECH Code Challenge SF29: "Wolves and Sheep"
//  Concept: Think through the logic of how to identify the position of an item in an array relative to the size of the array. It is not uncommon to need to think about how elements in an array are ordered relative to each other, so this skill will be useful in future development.

//  Instructions:
    //  Wolves have been reintroduced to Great Britain. You are a sheep farmer, and are now plagued by wolves which pretend to be sheep. Fortunately, you are good at spotting them.

    //  Warn the sheep in front of the wolf that it is about to be eaten. Remember that you are standing at the front of the queue which is at the end of the array:

    //  [sheep, sheep, sheep, sheep, sheep, wolf, sheep, sheep] (YOU ARE HERE AT THE FRONT OF THE QUEUE)
    //    7      6      5      4      3            2      1
    //  If the wolf is the closest animal to you, return "Pls go away and stop eating my sheep". Otherwise, return "Oi! Sheep number N! You are about to be eaten by a wolf!" where N is the sheep's position in the queue.

//  Notes:
    //  There will always be exactly one wolf in the array.

//  Examples:
    //  Input: ["sheep", "sheep", "sheep", "wolf", "sheep"]
    //  Output: "Oi! Sheep number 1! You are about to be eaten by a wolf!"

    //  Input: ["sheep", "sheep", "wolf"]
    //  Output: "Pls go away and stop eating my sheep"

//  ⌺ Black Diamond Challenge:
    //  Add a third character, "shepherd", to the puzzle. If the shepherd is adjacent to the wolf, return "Gotcha you mangy mutt!"
    //  Allow for multiple wolves in the array. Output the appropriate response for each wolf found, appending each to the output string as a new line.
        //  (You can add a new line to a string by adding "\n".)

import Foundation

let herd1 = ["sheep", "sheep", "sheep", "wolf", "sheep"]
let herd2 = ["sheep", "sheep", "wolf"]

func warnSheep(herd: [String]) -> String {
    for index in 0...herd.count - 2 {
        if herd[index] == "wolf" {
            return "Oi! Sheep number \(herd.count - 1 - index)! You are about to be eaten by a wolf!"
        }
            
    }
    return "Pls go away and stop eating my sheep."
}

print(warnSheep(herd: herd1))
print(warnSheep(herd: herd2))

func wolfWarning(herd: [String]) -> String {
    let shepardPos: Int = herd.firstIndex(of: "shepard") ?? 1000000
    var warning: String = ""
    for (index, element) in herd.enumerated() {
        if element == "wolf" {
            if abs(shepardPos - index) == 1 {
                warning.append("\nGotcha you mangy mutt!")
            } else if index != herd.count - 1 && herd[index + 1] == "sheep" {
                warning.append("\nOi! Sheep number \(herd.count - 1 - index)! You are about to be eaten by a wolf!")
            }
        }
    }
    return warning
}

let herd3 = ["sheep", "sheep", "sheep", "wolf", "sheep", "sheep", "sheep", "shepard", "wolf", "sheep"]
let herd4 = ["sheep", "sheep", "sheep", "wolf", "sheep", "sheep", "sheep", "shepard", "wolf", "wolf"]
    
print(wolfWarning(herd: herd3))
print(wolfWarning(herd: herd4))
