//
//  ContentView.swift
//  switchCaseGender
//
//  Created by Anastasiia Alyaseva on 26.05.2023.
//

import SwiftUI

enum Gender {
    case male
    case femal
    case other
}

struct User {
    var name: String
    var age: Int
    var gender: Gender
}

struct ContentView: View {
    var user = User(name: "Anastasiia", age: 28, gender: .femal)
    @State private var gender = Gender.male
    
    var body: some View {
        VStack {
            Text("User Profile")
                .font(.title)
                .padding()
            
            Text("Name: \(user.name)")
            Text("Age: \(user.age)")
            
            
            Picker("Gender", selection: $gender) {
                Text("Male").tag(Gender.male)
                Text("Femal").tag(Gender.femal)
                Text("Other").tag(Gender.other)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            switch gender {
            case .male:
                Text("You chose male")
            case .femal:
                Text("You chose femal")
            case .other:
                Text("You chose other")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
