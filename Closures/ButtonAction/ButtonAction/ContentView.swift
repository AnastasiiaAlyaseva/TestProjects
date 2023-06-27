//
//  ContentView.swift
//  ButtonAction
//
//  Created by Anastasiia Alyaseva on 26.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    let items = ["Apple", "Banana", "Cherry"]
    
    var body: some View {
        
        List{
            ForEach(items, id: \.self) { item in
                Text(item)
            }
        }
    }
}
    
    
//    @State private var tapCount = 0
//
//    var body: some View {
//        VStack {
//            Text("Tap count:\(tapCount) ")
//                .font(.largeTitle)
//            Button("Tap me") {
//                tapCount += 1
//            }
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
