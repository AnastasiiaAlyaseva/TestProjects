import SwiftUI
import Combine

struct ContentView: View {
    @State private var text = ""
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Text(text)
                .font(.largeTitle)
                .onReceive(timer) { _ in
                    let dateFormatter = DateFormatter()
                    dateFormatter.timeStyle = .medium
                    text = dateFormatter.string(from: Date())
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
