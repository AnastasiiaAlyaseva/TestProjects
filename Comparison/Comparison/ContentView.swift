import SwiftUI

struct ContentView: View {
    @EnvironmentObject var counter: Counter
    
    var body: some View {
        NavigationView{
            NavigationLink("Click",
                           destination: ChildView())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
