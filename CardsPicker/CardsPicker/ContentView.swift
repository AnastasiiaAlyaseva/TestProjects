import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationLink(destination: SwiftCard()){
                Text("Go to card")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
            .padding(.bottom)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
