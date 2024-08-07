
import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    
    
    var body: some View {
        Button("Tap") {
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeInOut(duration: 1)
                    .repeatForever(autoreverses: false),
                    value: animationAmount
                )
        )
        .onAppear{
            animationAmount = 2
        }
    }
    
    
//    var body: some View {
//        Button("Tap me") {
//            animationAmount += 1
//        }
//        .padding(50)
//        .background(.mint)
//        .clipShape(.circle)
//        .scaleEffect(animationAmount)
//        .blur(radius: (animationAmount - 1) * 2)
//        .animation(.default , value: animationAmount)
//    }
}

#Preview {
    ContentView()
}
