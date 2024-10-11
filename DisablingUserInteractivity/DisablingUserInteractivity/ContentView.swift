

import SwiftUI

struct ContentView: View {
    var body: some View {
//        ZStack {
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 300, height: 300)
//                .onTapGesture {
//                    print("Rectangle tapped")
//                }
//            Circle()
//                .fill(.green)
//                .frame(width: 300, height: 300)
//                .contentShape(.rect)
//                .onTapGesture {
//                    print("Circle tapped")
//                }
////                .allowsHitTesting(false)
//        }
        
        
        VStack {
            Text("Hello")
            Spacer()
                .frame(height: 100)
            Text("World")
        }
        .contentShape(.rect)
        .onTapGesture {
            print("VStack tapped!")
        }
    }
}

#Preview {
    ContentView()
}
