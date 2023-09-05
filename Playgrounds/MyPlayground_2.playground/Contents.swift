//: A UIKit based Playground for presenting user interface
  
import Foundation
import UIKit
import PlaygroundSupport

var age: Int? = 22
//
//func checkAge(age: Int?, name: String?) {
//    var myAge: Int = 0
//    if let age = age, let name = name {
//        myAge = age + 3
//    }
//
//    print(type(of: myAge))
//    print("My age is \(myAge) and name is \(name))
//}

//checkAge(age: age)


func checkAge2(age: Int?, name: String?) throws -> Int {
    guard let age = age, let name = name else {
        throw NSError(domain: "checkAge2 error", code: 1000)
    }
    
    print("My age is \(age) and name is \(name)")
    
    return age
}



//do {
//    try checkAge2(age: age, name: nil)
//} catch(let error as NSError) {
//
//
//    if error.code == 1000 {
//        print("no name. please fill name field")
//    } else if error.code == 1001 {
//        print("no age")
//    } else {
//        print("unknown error, try again later")
//    }
//
//}


func a() {
    let checkAge = try? checkAge2(age: age, name: "nil")
    
    guard let checkAge = checkAge else {
        print("Sad")
        return
    }
    
    print("All good, age = \(checkAge)")
}

a()



//guard let myAge = age else {
//  print("Age is undefined")
//  return
//}



//
//
//extension Array {
//  public mutating func shuffle() {
//    var temp = [Element]()
//    while !isEmpty {
//      let i = random(count)
//      let obj = remove(at: i)
//      temp.append(obj)
//    }
//    self = temp
//  }
//}
//
//var list = [ "a", "b", "c", "d", "e", "f", "g" ]
//list.shuffle()



