import UIKit

var greeting = "Hello, playground"
// набор правил которым должен соответствовать класс поддерживающий этот протокол
protocol Shape {
    var name: String {get set}
    
    func length() -> Double
    func area() -> Double
    
}
class Point: Shape {
    
    var name: String  = "Точка"
    
    var x: Int = 0
    var y: Int = 0
    
    func length() -> Double {
        return 0
    }
    func area() -> Double {
        return 0
}
}
class Line: Shape {
    var name: String = "Линия"
    
    var x1: Point = Point()
    var x2: Point = Point()
    
    func length() -> Double {
        return 0
    }
    
    func area() -> Double {
        return 0
    }
    
}
class Triangle: Shape {
    var name: String = "Треугольник"
    
    var x1: Point = Point()
    var x2: Point = Point()
    var x3: Point = Point()
    
    func length() -> Double {
        return 0
    }
    
    func area() -> Double {
        return 0
    
}
}
var p = Point()
var l = Line()
var t = Triangle()

var shapesArray: [Shape] = [p,l,t]

var totalLengt = 0.0
for s in shapesArray {
    totalLengt = totalLengt + s.length()
}

