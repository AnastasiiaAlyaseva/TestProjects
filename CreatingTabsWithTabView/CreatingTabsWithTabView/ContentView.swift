

import SwiftUI

struct ContentView: View {
    @State private var selectedTub = "One"
    
    var body: some View {
        TabView(selection: $selectedTub) {
            Button("Show Tab 2") {
                selectedTub = "Two"
            }
            .tabItem {
                Label("One", systemImage: "star")
            }
            .tag("One")
            
            Text("Tab 2")
                .tabItem {
                    Label("Two", systemImage: "person.fill")
                }
                .tag("Two")
        }
    }
}

#Preview {
    ContentView()
}
