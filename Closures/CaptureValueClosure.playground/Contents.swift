import UIKit

func makeRandomNumberGeneration()->()-> Int {
    var previousNumber = 0
    
    return {
        var newNumber:Int
        repeat{
        newNumber = Int.random(in: 1...3)
        } while newNumber == previousNumber
        
        previousNumber = newNumber
        
        return newNumber
    }
}

let generator = makeRandomNumberGeneration()


for _ in 1...10{
    let randomNumber = generator()
    print(randomNumber)
}
