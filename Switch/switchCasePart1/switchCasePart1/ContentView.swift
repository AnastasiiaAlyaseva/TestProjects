//
//  ContentView.swift
//  switchCasePart1
//
//  Created by Anastasiia Alyaseva on 26.05.2023.
//

import SwiftUI

enum Status {
    case loggedIn, loggedOut, expired
}

struct ContentView: View {
    @State var userStatus: Status = .expired
    
    var body: some View {
        VStack {
            switch self.userStatus {
            case .loggedIn:
                Text("Welcome!")
            case .loggedOut:
                Image(systemName: "person.fill")
            case .expired:
                Text ("Session expired")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
