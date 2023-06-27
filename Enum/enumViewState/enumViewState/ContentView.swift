import SwiftUI

enum ViewState {
    case loading
    case content
    case error
}

struct ContentView: View {
    @State private var viewState: ViewState = .loading
    
    var body: some View {
        VStack {
            if viewState == .loading {
                Text("Loading....")
            } else if viewState == .content {
                Text("Content")
            } else {
                Text("Error")
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                viewState = .content
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
