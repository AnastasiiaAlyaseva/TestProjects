//
//  ContentView.swift
//  enumCustomButtonStyles
//
//  Created by Anastasiia Alyaseva on 09.05.2023.
//

import SwiftUI

enum ButtonStyleType {
    case primary
    case secondary
}

struct CustomButtonStyle: ButtonStyle {
    var styleType: ButtonStyleType
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(styleType == .primary ? Color.blue : Color.gray)
            .foregroundColor(.white)
            .cornerRadius(8)
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Button("Primary Button") {
                print("Primary button tapped")
            }
            .buttonStyle(CustomButtonStyle(styleType: .primary))
            
            Button("Secondary Button") {
                print("Secondary button tapped")
            }
            .buttonStyle(CustomButtonStyle(styleType: .secondary))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
