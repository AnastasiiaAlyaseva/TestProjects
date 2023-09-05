import UIKit

var greeting = "Hello, playground"
class Point2D {
    var x: Int = 0
    var y: Int = 0
    func reset() {
        x = 0
        y = 0
    }
    init (x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
}
// класс 3D является  дочерним по отношению к классу 2D,те наследует все свойства и методы класса 2D
class Point3D: Point2D {
    var z: Int = 0
    
// замена наследуеваемого метода
    
    override func reset() {
        super.reset()
        z = 0
}
    init(x: Int, y: Int, z: Int) {
        self.z = z
        super.init(x: x, y: y)
    }
}
var p3D = Point3D(x: -10, y: -10, z: -10)
p3D.x = 10
p3D.y = 10
p3D.z = 10

p3D.reset()

p3D.z
p3D.x
p3D.y
