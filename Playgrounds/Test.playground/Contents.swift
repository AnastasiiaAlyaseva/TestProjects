import Foundation
import UIKit
import PlaygroundSupport


var hello = String("Hello,")
var name = "Anastasiia!"
let age = 28
let ttt = hello + "" + name + String(age)
let counts: [Int] = [1,2,3,4,5]


let tt = "\(hello) \(name). I'm \(age) years old"

struct Person {
    let name: String
    var lastName: String
}
Person.init(name: "hgkkh", lastName: "jfjhjh")

Person(name: "Jon", lastName: "Jonson").name

let jeak: Person = Person(name: "Jeak", lastName: "Jeakson")
jeak.name

var people: [Person] = [Person(name: "Jon", lastName: "Jonson"),
                        jeak]

people[0].name
people[1].name

for person in people {
    print(person.name)
}

var stive1: Person = Person(name: "Stive", lastName: "Stivenson")
stive1.lastName = "Chick"
stive1.lastName

var stive2: Person = Person(name: "Stive", lastName: "Puk")

people.append(contentsOf: [stive1, stive2])

var dict: [String : Person ] = [
    "Key": jeak,
    "One" : stive1
]
print(dict)

var a = dict["Key"]
a?.lastName = "jkljer"
print(dict["Key"]?.lastName)

dict["Three"] = stive2
print(dict.count)

for keyValue in dict {
    print(keyValue.value.name)
}

print(dict.keys)
print(dict.values)

for value in dict.values {
    print(value.name)
}


var b = 13
//repeat {
//
//    b += 1
//    print(b)
//} while b <= 16

while b <= 16 {
    b += 1
    print(b)
}


class Transport {
    private var position: Int
    var carAge: Int?
    
    init(position: Int) {
        self.position = position
    }
    
    func move() {
        position += 1
    }
    
    func currentPosition() -> Int {
        return position
    }
    
    func setPosition(position: Int) {
        self.position = position
    }
}

let car: Transport = Transport(position: 0)
print(car.currentPosition())
car.move()
car.move()
print(car.currentPosition())
car.carAge = nil

if let carAge = car.carAge {
    print(carAge)
}



final class Car: Transport {
    private var color: String
    
    init(color: String, position: Int) {
        self.color = color
        super.init(position: position)
    }
    
    override func move() {
        setPosition(position: currentPosition() + 3)
    }
}

let car2 : Car = Car(color: "Red", position: 3)
let car3 : Car = Car(color: "Blue", position: 5)
car2.currentPosition()
car3.currentPosition()
car3.move()

final class Bike: Transport {
    
}

let bike: Bike = Bike(position: 0)
bike.move()


let t3321: Transport = Car(color: "", position: 4)
t3321.move()

let transports: [Transport] = [bike, car, car3]
for transport in transports {
    print("position: \(transport.currentPosition())")
}


/////////
///
/////

let allTransports: [Transport] = [bike, car, car3, bike, car, car3, bike, car, car3, bike, car, car3]
let carAge = 1885
allTransports[2].carAge = carAge

if let carAge = allTransports[2].carAge {
    print(carAge)
}

var carAgeChange = 1885

for transport in allTransports {
    transport.carAge = carAgeChange
    carAgeChange += 1
    print(transport.carAge)
}

carAgeChange = 1885

let dictTransports: [ String : [Transport]] = [
    "Green": [bike, bike, bike] ,
    "Red": [car],
    "Blue": [car3]
]
for transports in dictTransports.values {
//    print(transports.count)
    for trObject in transports {
        trObject.carAge = carAgeChange
        carAgeChange += 1
        print(trObject.carAge)
    }
}

struct Word: Identifiable, Hashable {
    let id = UUID()
    let word: String
    let meaning: String
}

 
 let flowersWords = [
    Word(word: "Violet", meaning: "фиалка"),
    Word(word: "Rose", meaning: "роза"),
    Word(word: "Tulip", meaning: "тюльпан"),
    Word(word: "Daffodil", meaning: "нарцисс"),
    Word(word: "Daisy", meaning: "ромашка")
]

struct Collection: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let words: [Word]
}


 var collections: [Collection] = [
    Collection(name: "Flowers", words: flowersWords)
]

for collection in collections{
    for word in collection.words {
        print(word.word)
    }
}
let date: Date = .now
print(date)
print(date + 5)

func sendEmail(name: String) -> Bool {
    print(name)
    return true
}


let send = sendEmail(name: "Sergey")
print(send)

var email: (String) -> String

func email2(name: String) -> String {
    let a: String = "test" + name
    print(name)
    return a
}

func email3(test: String) -> String {
    let a: String = test + " other "
    return a
}

email = email2
email = email3

let hhh = email("ttt")
print(hhh)


let sound: (String) -> (String) = { test in
    return test + " sound"
}

sound("hey")



func sendEmail2(name: String, lastName: (String) -> String) -> Bool {
    let ghghj = lastName("gghhyhu")
    print(name + ghghj)
    return true
}

let call = sendEmail2(name: "fggs", lastName: email )
print(call)

let call2 = sendEmail2(name: "fggs", lastName: { test in
    return test
}
)
 print (call2)

////
func sendEmail(openURL: String, completion: @escaping (Bool) -> ()) {

  let accepted = true
    completion (accepted)
   // }
}

sendEmail(openURL: "das", completion: { result in
    //
})

sendEmail(openURL: "das") { result in
    //
}

func openUrl(_ url: String, completion: @escaping (Bool) -> ()) {
//    if ...
//    completion (true)
//        else
//        completion (false)
}

func ttt(number: Bool) -> Int {
    let a: Int = 1
    return a
}

let asd = ttt(number: false)


