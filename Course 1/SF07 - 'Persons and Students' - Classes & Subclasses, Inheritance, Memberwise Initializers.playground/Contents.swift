//  🏔️ MTECH Code Challenge SF07: "Persons and Students"
//  Concept: Practice creating classes, using inheritance to create subclasses, and creating initializers

//  Instructions:
    //  Under each step below, write the required code.

import Foundation

//  1) Create a Person class
    //  Include a name, age, weight, and favoriteColor properties
class Person {
    var name: String
    var age: Int
    var weight: Int
    var favoriteColor: String
    
    init(name: String, age: Int, weight: Int, favoriteColor: String) {
        self.name = name
        self.age = age
        self.weight = weight
        self.favoriteColor = favoriteColor
    }
}

//  2) Create a Student class
    //  This class inherits from Person.
    //  A student also has a currentClass, a grade, and a gpa property
class Student: Person {
    var currentClass: String
    var grade: Character
    var gpa: Double
    
    init(name: String, age: Int, weight: Int, favoriteColor: String, currentClass: String, grade: Character, gpa: Double) {
        self.currentClass = currentClass
        self.grade = grade
        self.gpa = gpa
        super.init(name: name, age: age, weight: weight, favoriteColor: favoriteColor)
    }
}


//  ⌺ Black Diamond Challenge:
    //  Create a third class called Teacher.
    //  Include a reasonable set of properties.
    //  Write a function that can take either a student or a teacher and print their age.

class Teacher: Person {
    var subject: String
}
