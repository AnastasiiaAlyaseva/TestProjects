//
//  ContentView.swift
//  PickerColor
//
//  Created by Anastasiia Alyaseva on 30.03.2023.
//

import SwiftUI

struct ContentView: View {
    var сountries = ["Germany", "France", "Italy", "Russia"]
    @State private var selectedCountries = "Germany"
    
    var body: some View {
        VStack {
            Picker("Please choose a countries", selection:$selectedCountries) {
                ForEach(сountries, id: \.self) {
                    Text($0)
                    
                }
            }
            .pickerStyle(InlinePickerStyle())
            Text ("You selected: \(selectedCountries)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
