//: A UIKit based Playground for presenting user interface
  
import Foundation
import UIKit

let coding = {
    print("Hello")
}
coding()



import SwiftUI

struct Contact: Identifiable {
    let id = UUID()
    let name: String
    let phoneNumber: String
}

struct ContentView: View {
    @State private var searchText = ""
    @State private var contacts = [
        Contact(name: "Alice", phoneNumber: "555-1234"),
        Contact(name: "Bob", phoneNumber: "555-5678"),
        Contact(name: "Charlie", phoneNumber: "555-9012"),
        Contact(name: "David", phoneNumber: "555-3456"),
    ]
    
    var filteredContacts: [Contact] {
        if searchText.isEmpty {
            return contacts
        } else {
            return contacts.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText)
                    .padding(.horizontal)
                
                List(filteredContacts) { contact in
                    VStack(alignment: .leading) {
                        Text(contact.name)
                            .font(.headline)
                        Text(contact.phoneNumber)
                            .font(.subheadline)
                    }
                }
                .navigationBarTitle("Contacts")
                .navigationBarItems(trailing:
                    HStack {
                        Button(action: {
                            self.contacts.sort { $0.name < $1.name }
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

struct SearchBar: UIViewRepresentable {
    @Binding var text: String
    
    class Coordinator: NSObject, UISearchBarDelegate {
        @Binding var text: String
        
        init(text: Binding<String>) {
            _text = text
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }
    
    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        searchBar.searchBarStyle = .minimal
        searchBar.autocapitalizationType = .none
        searchBar.autocorrectionType = .no
        searchBar.placeholder = "Search"
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>) {
        uiView.text = text
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

