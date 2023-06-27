//: A UIKit based Playground for presenting user interface
  
import UIKit

//enum WeatherType {
//    case sun, cloud, rain, wind, snow
//}
//
//func getHaterStatus(weather: WeatherType) -> String? {
//    if weather == WeatherType.sun {
//        return nil
//    } else {
//        return "Hate"
//    }
//}
//
//getHaterStatus(weather: WeatherType.cloud)


//enum WeatherType {
//    case sun
//    case cloud
//    case rain
//    case wind
//    case snow
//}
//
//func getHaterStatus(weather: WeatherType) -> String? {
//    switch weather {
//    case .sun :
//        return nil
//    case .cloud, .wind:
//        return "dislike"
//    case .rain, .snow:
//        return "hate"
//    }
//}
//getHaterStatus(weather: .wind)


enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}

func getHaterStatus(weather: WeatherType) -> String? {
    switch weather{
     case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getHaterStatus(weather: .wind(speed: 15))


enum Drink: CaseIterable {
case coffe, tea, juice, soda
}
let numberOfChoices = Drink.allCases.count
print("\(numberOfChoices) drinks avalable")

for drink in Drink.allCases {
    print(drink)
}



enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check)")
case .qrCode(let productCode):
    print("QR code: \(productCode)")
}
