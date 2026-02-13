//  🏔️ MTECH Code Challenge SF09: "Distance Between Points"
//  Concept: Practice converting mathematical formulae into Swift functions and working with doubles.

//  Instructions:
    //  Create a function that finds the distance between two points on an x,y plane.
    //  The function will take in 4 paramaters as doubles (x1,y1,x2,y2)
    //  It will return the distance as a double
    //  Most likely you do not know the formula for finding the distance between two points. Google it.

//  ⌺ Black Diamond Challenge:
    //  Create a struct called "Point" that holds the x and y values of each point, then use instances of Point to calculate the distance.

import Foundation

func calcDistance(x1: Double, x2: Double, y1: Double, y2: Double) -> Double {
    return sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2))
    //var hypotenuse2 = (x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1)
    //return pow(hypotenuse2, 0.5)
}

struct Point {
    var x: Double
    var y: Double
}

var point1 = Point(x: 1, y: 6)
var point2 = Point(x: 3, y: 6)

calcDistance(x1: point1.x, x2: point2.x, y1: point1.y, y2: point2.y)
