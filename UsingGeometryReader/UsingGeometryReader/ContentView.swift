

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Text("Anastasiia")
                .frame(width: 200)
                .background(.mint)
            
            GeometryReader { proxy in
                Image(.photo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: proxy.size.width * 0.8)
                    .frame(width: proxy.size.width, height: proxy.size.height)
                
            }
        }
    }
}

#Preview {
    ContentView()
}
