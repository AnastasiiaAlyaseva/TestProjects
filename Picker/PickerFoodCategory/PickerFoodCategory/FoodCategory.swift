import SwiftUI

enum foodCategory: String, CaseIterable, Identifiable {
    case meat
    case fruits
    case fish
    case vegetables
    
    var id: Self{
        self
    }
    
    var title: String {
        switch self {
        case .meat:
            return "Meat"
        case .fruits:
            return "Fruits"
        case .fish:
            return "Fish"
        case .vegetables:
            return "Vegetables"
        }
    }
}
