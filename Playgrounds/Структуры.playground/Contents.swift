import UIKit

var greeting = "Hello, playground"
// структура - блок данных который связывант 2 точки
struct Point {
    var x: Int
    var y: Int
}
var p = Point (x: 0, y: 0)
p.x = 10
p.y = 11
p.x

struct Line {
    var p1: Point
    var p2: Point
    
    func length() -> Double {
        
        return sqrt((p2.x - p1.x) * (p2.x - p1.x) + (p2.y - p1.y) * (p2.y - p1.y))
    }
    
}
var l = Line(p1:Point(x:0, y:0), p2: Point(x:1, y:1))

l.length()

l.p1.x
l.p2.y




