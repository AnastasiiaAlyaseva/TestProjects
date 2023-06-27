//: A UIKit based Playground for presenting user interface
  
import Foundation
import UIKit
import PlaygroundSupport


var myFavoriteNumber: Int = 18
let pi: Double = 3.14159
var isSunny: Bool = true
var favoriteFood: String = "My favorite food is meat"

let person  = ("Anastasiia", 28, true)

let (name, age, drivinglicence) = person
print("My name is \(name). I'm \(age) years old" )
print(drivinglicence == true ? "I have a driving licence" : "I don't have a driving licence")


var temperature = 72.5
let numberOfMonthsInYear: Int = 12

let (year, month, day) = (2023, "March", "Friday")
print(year)
print(month)
print(day)

for number in 1...10 {
    print(number)
}


func printGreeting (name: String) -> String {
    let greeting = "Glag to see you, " + name + "!"
    return greeting
}
print (printGreeting(name: "Anastasiia"))


// Testing
/*
var a: Int = 67

func test(a: Int) {
    print(a)
    
    let a = 8
    print(a)
}

test(a: a)

a = 789
test(a: a)
*/
