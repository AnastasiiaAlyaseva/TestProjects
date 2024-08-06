

import SwiftUI

struct ContentView: View {
    @State private var blurAmound = 0.0
    
    var body: some View {
        VStack {
            Text("Hallo, Anastasiia!")
                .blur(radius: blurAmound)
            
            Slider(value: $blurAmound, in: 0...20)
                .onChange(of: blurAmound) {
                    oldValue , newValue in
                    print("New value is \(newValue)")
                }
        }
    }
}

#Preview {
    ContentView()
}
