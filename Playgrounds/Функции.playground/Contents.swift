import UIKit

var greeting = "Hello, playground"
//  фрагмент программного кода, к которому можно обратиться из другого места программы. В большинстве случаев с функцией связывается идентификатор, но многие языки допускают и безымянные функции.
func zen(){
print("Пусто")
}
zen()

func hello(name: String?) {
    if let name = name {
        print("Hello," + name + "!")
    } else {
       print("Hello, anonimus")
    }
}
hello(name:nil)

func hi(name: String?) -> String {
    if let name = name {
        return "Hello," + name + "!"
    } else {
        return "Hello, anonimus"
    }
}
hi(name: nil)

var returnValue = hi(name: "Anastasia")
print(returnValue)

func sm(name: String?) -> String? {
    if let name = name {
        return "Hello," + name + "!"
    } else {
        return nil
    }
}
var returnVmalue = sm(name: "Anastasia")
print(returnValue)

func length(radius: Double) -> Double {
    let pi = 3.1415926
    let l = 2*pi*radius
    return l
}
length(radius:10)

