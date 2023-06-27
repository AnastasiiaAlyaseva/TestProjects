//
//  ContentView.swift
//  onChange
//
//  Created by Anastasiia Alyaseva on 26.04.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            TextField("Search", text: $searchText)
                .padding()
                .onChange(of: searchText) { newValue in
                    print("Search text changed to: \(newValue)")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
