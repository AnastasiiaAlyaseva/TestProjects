import SwiftUI

enum TypesOfCoffee{
    case americano
    case cappuccino
}

class Coffee {
    var water = 0
    var milk = 0
    var groundCoffee = 0
    var sugar = 0
    var status = false
    
    private func americano() {
        water += 1
        groundCoffee += 1
        status = true
    }
    
    private func cappuccino() {
        water += 1
        groundCoffee += 1
        milk += 1
        status = true
    }
    
    func makeCoffee(coffee: TypesOfCoffee, sugar: Int) {
        switch coffee {
        case .americano:
            americano()
        case .cappuccino:
            cappuccino()
        }
        self.sugar += sugar
    }
}
