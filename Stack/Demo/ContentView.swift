//
//  ContentView.swift
//  Demo
//
//  Created by Anastasiia Alyaseva on 03.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Text("Press the button below")
                .font(.system(size: 25))
            Button(action: {
                print("Button is pressed")
            })
            {
                Text("Press me")
                    .padding()
                    .font(.body)
                    .foregroundColor(.white)
                    .background(Color.mint)
            }
        }
        
// ________________________________________________________
//        HStack {
//            Button (action: {
//                print("Left button is pressed")
//            }) {
//                Text("Left Button")
//                    .padding()
//                    .font(.body)
//                    .foregroundColor(.white)
//                    .background(Color.mint)
//            }
//            Button(action:{
//                print("Right button is pressed")
//            }) {
//                Text("Right Button")
//                    .padding()
//                    .font(.body)
//                    .foregroundColor(.white)
//                    .background(Color.mint)
//            }
//        }
//________________________________________________________
        
//        ZStack {
//            Image(systemName: "globe.europe.africa")
//                .font(.system(size: 300))
//            Text("Africa!")
//                .font(.system(size: 25))
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
