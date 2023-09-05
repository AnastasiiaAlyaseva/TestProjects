import UIKit

var greeting = "Hello, playground"
class Point {
    var x: Double
    var y: Double
    
    init() {
        self.x = 0
        self.y = 0
        
    }
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
        
    }
}

class Line {
    var p1: Point
    var p2: Point
    init () {
        p1 = Point ()
        p2 = Point ()
    }
    init(p1: Point, p2: Point){
        self.p1 = p1
        self.p2 = p2
    }
    init (x1: Double, y1: Double, x2: Double, y2: Double) {
        self.p1 = Point (x: x1, y: y1)
        self.p2 = Point (x: x2, y: y2)
    }
}


var l = Line (x1: 1, y1: 1, x2: 2, y2: 2)
l.p1.x

func length() -> Double {
    return 0
}
var p1 = Point (x: 100, y: 100)
var p2 = Point(x: 10, y: 10)
p1 = p2
p1.x = 0

p2.x

// классы передаются по указателю на этот класс (на объект), а структура  - по значению
