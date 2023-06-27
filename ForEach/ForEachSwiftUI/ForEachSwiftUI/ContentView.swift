//
//  ContentView.swift
//  ForEachSwiftUI
//
//  Created by Anastasiia Alyaseva on 31.03.2023.
//

import SwiftUI

struct ContactGroop: Identifiable {
    let id = UUID()
    let name: String
    let contacts: [Contact]
}
struct Contact: Identifiable {
    let id = UUID()
    let name:String
}

struct ContentView: View {
    let contactGroups: [ContactGroop] = [
        ContactGroop(name: "Favorite", contacts: [
            Contact(name: "Dina"),
            Contact(name: "Anna"),
            Contact(name: "Alice")
            
        ]),
        ContactGroop(name: "Ignor", contacts: [
            Contact(name: "Jane"),
            Contact(name: "Kate")
        ]),
        
    ]
    
    var body: some View {
        List(contactGroups){ info in
            Section {
                ForEach(info.contacts){ contact in
                    Text(contact.name)
                }
            } header: {
                Text(info.name)
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
