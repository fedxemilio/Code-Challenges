//  🏔️ MTECH Code Challenge ND13: "Point Reflection"
//  Concept: Practice translating geometric concepts into Swift code

//  Instructions:
    //  "Point reflection" or "point symmetry" is a basic concept in geometry where a given point, P, at a given position relative to a mid-point, Q has a corresponding point, P1, which is the same distance from Q but in the opposite direction.
    //  Create a function that, given two points P and Q, outputs the symmetric point of point P about Q. Each argument is of the type Point. Output should be in the same format, giving the X and Y coordinates of point P1. You do not have to validate the input.

//  Examples:
    //  Input: Point(x: 0, y: 0), Point(x: 1, y: 1)
    //  Output: Point(x: 2, Y: 2)

    //  Input: Point(x: 2, y: 6), (x: -2, y: -6)
    //  Output: Point(x: -6, y: -18)

//  ⌺ Black Diamond Challenge:
    //  Create an additional function that, given a point P and a line defined by two points L1 and L2, outputs the reflection of point P across the line.
        //  Input: Point(x: 0, y: 0), Line(Point(x: 1, y: 1), Point(x: 2, y: 2))
        //  Output: Point(x: 2, y: 2)
    //  You can look up the geometric formulas to find the reflection of a point across a line.

import Foundation

struct Point {
    var x: Int
    var y: Int
}

struct Line {
    var point1: Point
    var point2: Point
    
    var slope: Double {
        Double((point2.y - point1.y)) / Double((point2.x - point1.x))
    }
}

func giveReflection(_ point: Point, _ midpoint: Point) -> Point {
    let deltaX = abs(point.x - midpoint.x) * 2
    let deltaY = abs(point.y - midpoint.y) * 2
    
    let pointX = point.x > midpoint.x ? point.x - deltaX: point.x + deltaX
    let pointY = point.y > midpoint.y ? point.y - deltaY: point.y + deltaY
    
    return Point(x: pointX, y: pointY)
}

print(giveReflection(Point(x: 0, y: 0), Point(x: 1, y: 1)))
print(giveReflection(Point(x: 2, y: 6), Point(x: -2, y: -6)))



func giveReflection(_ point: Point, _ line: Line) -> Point {
    
    let midpoint = Point(x: (line.point1.x + line.point2.x) / 2, y: (line.point1.y + line.point2.y) / 2)
    
    return (giveReflection(point, midpoint))
}

print(giveReflection(Point(x: 0, y: 0), Line(point1: Point(x: 1, y: 1), point2: Point(x: 2, y: 2))))
