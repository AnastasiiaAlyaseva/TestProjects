//: A UIKit based Playground for presenting user interface
  
import Foundation
import UIKit
import PlaygroundSupport

//var information:Set = ["Sergey", "Anastasiia", "Michael", "Natalia"]
//information.forEach { name in
//    print(name)
//}
//
//information.forEach{
//    print($0)
//}
//
//for info in information {
//    print(info)
//}

//var numbers: Set = [1,2,3,4,5,6,7]
//numbers.forEach{ info in
//    print(info)
//}
//
//for number in numbers {
//    print(number)
//}

//let ages = ["Marry": 22, "Anna": 25, "Jane": 23]
//for(name,age) in ages {
//    print("\(name) is \(age) years old")
//}
//
//for index in (0...3).reversed() {
//    print("\(index)")
//}


//var evenNumber = [Int]()
//for number in (0...100){
//    guard evenNumber.count < 10 else {
//        break
//    }
//    guard number % 2 == 0 else {
//        continue
//    }
//    evenNumber.append(number)
//}
//print(evenNumber)

//let evenNumbers = (0...100).filter { number -> Bool in
//    return number % 2 == 0
//}.prefix(10)
// print(evenNumbers)

func rollDice() -> Int {
    return (1...6).randomElement()!
}
let maxTries = 6
var tries = 0
var score = 0

//while tries < maxTries {
//    score += rollDice()
//    tries += 1
//}
//print("Total score is \(score)")

repeat {
    score += rollDice()
    tries += 1
} while tries < maxTries
            
print("Total score is \(score)")
