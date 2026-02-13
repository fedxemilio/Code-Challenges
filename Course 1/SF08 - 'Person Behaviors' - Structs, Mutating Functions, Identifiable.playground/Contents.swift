//  🏔️ MTECH Code Challenge SF08: "Person Behaviors"
//  Concept: Practice creating structs, comparing two structs, and mutating struct values

//  Instructions:
    //  Create a Person value type with the following attributes and behaviors:
        //  Attributes: name, age, height, weight
        //  Behaviors:
            //  greeting: Print "Hello, my name is <name>, and I am <age> years old."
            //  birthday: Increase age by one
            //  growUp: Increase height by 0.1

//  ⌺ Black Diamond Challenge:
    //  Add a variable called bodyMassIndex. Set its initial value to 0. Assuming height is in meters and weight is in kilograms, compute the bodyMassIndex property any time height and weight change.

import Foundation

struct Person {
    var name: String
    var age: Int
    var height: Double {
        didSet {
            calcBMI()
        }
    }
    var weight: Double {
        didSet {
            calcBMI()
        }
    }
    var bodyMassIndex: Double = 0
    
    func greeting() {
        print("Hello, my name is \(name), and I am \(age) years old.")
    }
    
    mutating func birthday() {
        age += 1
    }
    
    mutating func growUp() {
        height += 0.1
    }
    
    mutating func calcBMI() {
        bodyMassIndex = weight / height * height
    }
}
