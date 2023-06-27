//: A UIKit based Playground for presenting user interface
  
import Foundation
import UIKit

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    
}


var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday
day = .tuesday


let array = ["Apples", "Peaches", "Plums"]

//for item in array.reversed() {
//    print("Found \(item)")
//}

for (index,item) in array.reversed().enumerated() {
    print("Found \(item) at position \(index)")
}
