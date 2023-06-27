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

struct ContentView: View {
    @State private var selectedIten : foodCategory = .fish
    
    var body: some View {
        NavigationStack {
            List {
                Picker("Food", selection: $selectedIten){
                    ForEach(foodCategory.allCases) { category in
                        
                        HStack {
                            Text(category.title).tag(category)
                            Spacer()
                            Image(systemName: "magnifyingglass.circle")
                        }
                    }
                }
                HStack {
                    Text ("You search in: ")
                    Text (selectedIten.rawValue)
                }
                
            }
            .navigationTitle("Store")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
