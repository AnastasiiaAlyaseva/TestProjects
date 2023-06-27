//
//  ContentView.swift
//  StaticAndDynamicData
//
//  Created by Anastasiia Alyaseva on 31.03.2023.
//

import SwiftUI

struct ContactGroup: Identifiable {
    let id = UUID()
    let name: String
    let contacts: [Contact]
}

struct Contact: Identifiable {
    let id = UUID()
    let name: String
}

struct ContentView: View {
    
    let favourite = [
        Contact(name:"Mary"),
        Contact(name:"Nat"),
        Contact(name:"Lis")
    ]
    let contacts = [
        Contact(name:"Alex"),
        Contact(name:"Den")
    ]
    
    var body: some View {
        List {
            Text("Favourite")
            HStack {
                ForEach(favourite) { contact in
                    Button(contact.name){
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
            Section{
                ForEach(contacts) { contact in
                    /*@START_MENU_TOKEN@*/Text(contact.name)/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
