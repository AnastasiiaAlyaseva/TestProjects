//
//  ContentView.swift
//  Pickers
//
//  Created by Anastasiia Alyaseva on 27.03.2023.
//

import SwiftUI

struct ContentView: View {
    var electronics = ["laptop", "phone", "watch", "headphone"]
    @State private var selectedElectronics = "laptop"
    var body: some View {
        VStack {
            Picker("Please choose a electronics", selection: $selectedElectronics) {
                ForEach(electronics, id:\.self){
                    Text($0)
                    
                }
            }
            .pickerStyle(WheelPickerStyle())
            Text("You selected: \(selectedElectronics)")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
