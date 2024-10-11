

import SwiftUI

//struct ContentView: View {
//    @State private var currentAmount = 0.0
//    @State private var finalAmount = 1.0
//    
//    var body: some View {
//            Text("Hello, world!")
//            .scaleEffect(finalAmount + currentAmount)
//            .gesture(
//                MagnifyGesture()
//                    .onChanged { value in
//                        currentAmount  = value.magnification - 1
//                    }
//                    .onEnded { value in
//                        finalAmount += currentAmount
//                        currentAmount = 0
//                    }
//            )
//    }
//}

struct ContentView: View {
    @State private var currentAmount = Angle.zero
    @State private var finalAmount = Angle.zero
    
    var body: some View {
        Text("Hello, World")
            .rotationEffect(currentAmount + finalAmount)
            .gesture(
                RotateGesture()
                    .onChanged { value in
                        currentAmount = value.rotation
                    }
                    .onEnded { value in
                        finalAmount += currentAmount
                        currentAmount = .zero
                    }
            )
    }
}

#Preview {
    ContentView()
}
