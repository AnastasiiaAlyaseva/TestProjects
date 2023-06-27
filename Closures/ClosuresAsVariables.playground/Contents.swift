//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

func getUserData(for id: Int) -> String {
    if id == 1994 {
        return "Data of birth"
    } else {
        return "Ananymos"
    }
}

let data:(Int)-> String = getUserData
let user = data(1994)
print(user)
