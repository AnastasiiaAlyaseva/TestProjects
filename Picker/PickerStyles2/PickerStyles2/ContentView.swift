//
//  ContentView.swift
//  PickerStyles2
//
//  Created by Anastasiia Alyaseva on 31.03.2023.
//

import SwiftUI

struct ContentView: View {
    @State var selection: String = "Sergey"
    let nameOptions: [String] = ["Sergey", "Anastasiia", "Michael", "Natalia"]
    var body: some View {
        Picker(selection: $selection,
               label: HStack {
            Text("Name")
            Text(selection)
        },
               content: {
            ForEach(nameOptions, id: \.self) { name in
                HStack {
                    Text(name)
                    Image(systemName: "heart.fill")
                }
                .tag(name)
            }
        })
        .pickerStyle(MenuPickerStyle())
        .font(.headline)
        .foregroundColor(.white)
        .padding()
        .padding(.horizontal)
        .background(Color.mint)
        .cornerRadius(10)
        .shadow(color: Color.blue.opacity(0.3), radius: 10)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
