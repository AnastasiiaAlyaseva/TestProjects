import SwiftUI

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
