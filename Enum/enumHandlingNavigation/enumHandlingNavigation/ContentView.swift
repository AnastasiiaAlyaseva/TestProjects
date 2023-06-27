import SwiftUI

enum Screen {
    case home
    case detail
}

struct ContentView: View {
    @State private var currentScreen: Screen = .home
    
    var body: some View {
        NavigationView {
            VStack {
                if currentScreen == .home {
                    Button("Go to Detail") {
                        currentScreen = .detail
                    }
                } else {
                    Button("Go Back") {
                        currentScreen = .home
                    }
                }
            }
            .animation(.default, value: currentScreen)
            .navigationBarTitle(currentScreen == .home ? "Home" : "Detail" , displayMode: .inline )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
