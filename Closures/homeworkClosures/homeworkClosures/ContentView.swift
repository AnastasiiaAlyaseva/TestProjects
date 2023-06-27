//
//  ContentView.swift
//  homeworkClosures
//
//  Created by Anastasiia Alyaseva on 26.04.2023.
//

import SwiftUI

struct Contact: Identifiable {
    let id = UUID ()
    let name: String
    let phoneNumber: String
}


struct ContentView: View {
    @State private var searchText = ""
    @State private var contacts = [
        Contact(name: "Anastasiia", phoneNumber: "181194"),
        Contact(name: "Mary", phoneNumber: "311271"),
        Contact(name: "Sergey", phoneNumber: "241092"),
        Contact(name: "Alice", phoneNumber: "150391"),
    ]
    
    private var filteredContact: [Contact] {
        if searchText.isEmpty {
            return contacts
        } else {
            return contacts.filter{$0.name.lowercased().contains(searchText.lowercased())}
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Search Contact...", text: $searchText)
                    .padding(EdgeInsets(top: 8, leading: 10, bottom: 8, trailing: 10))
                    .background(Color(.systemGray).opacity(0.3))
                    .cornerRadius(10)
                    .padding(EdgeInsets(top: 8, leading: 10, bottom: 8, trailing: 10))
                
                List(filteredContact) { contact in
                    VStack(alignment: .leading) {
                        Text(contact.name)
                            .font(.headline)
                        Text(contact.phoneNumber)
                            .font(.subheadline)
                    }
                }
                .navigationTitle("Contacts")
                .navigationBarItems(trailing:
                                        
                HStack{
                    
                    Button(action: {
                        self.contacts.sort {$0.name < $1.name}
                    }) {
                        Image(systemName: "arrow.up.arrow.down")
                    }
                    Button(action: {
                        self.contacts.shuffle()
                    }) {
                        Image(systemName: "shuffle")
                    }
                }
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
