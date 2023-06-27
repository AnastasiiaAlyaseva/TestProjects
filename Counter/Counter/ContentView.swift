//
//  ContentView.swift
//  Counter
//
//  Created by Anastasiia Alyaseva on 24.03.2023.
//

import SwiftUI

struct ContentView: View {
    @State var tapCount: Int = 0
    
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("Tap count: \(tapCount)")
            Button(action: {
                self.tapCount += 1
            }) {
                Text ("Increment")
            }
            Button(action: {
                self.tapCount -= 1
            }) {
                Text ("Decrement")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
