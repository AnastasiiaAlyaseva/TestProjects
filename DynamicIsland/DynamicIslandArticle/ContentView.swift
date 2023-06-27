import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, Dynamic Island!")
            Button("Notify Me 🙃") {
                NotificationCenter.default.post(name: .init("Notify"), object: NotificationModel( title: "Dynamic Island", content: "This is an example 😌" ))
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
