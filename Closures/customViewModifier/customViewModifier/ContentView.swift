//
//  ContentView.swift
//  customViewModifier
//
//  Created by Anastasiia Alyaseva on 26.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text("Hello,Anastasiia")
            .applyCustomModifier {
                $0.font(.largeTitle)
                    .foregroundColor(.blue)
            }
    }
}

extension View {
    func applyCustomModifier(_ modifier: (Self) -> Self) -> Self {
        return modifier(self)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
