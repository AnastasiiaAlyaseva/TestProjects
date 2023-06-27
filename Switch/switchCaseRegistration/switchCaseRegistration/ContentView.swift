//
//  ContentView.swift
//  switchCaseRegistration
//
//  Created by Anastasiia Alyaseva on 26.05.2023.
//

import SwiftUI

enum RegistrationStatus {
    case pending
    case approved
    case rejected
}

struct ContentView: View {
    @State private var registrationStatus: RegistrationStatus = .pending
    
    var body: some View {
        VStack {
            switch registrationStatus {
            case .pending:
                Text("Registration is pending approval.")
            case .approved:
                Text("Registration is approved. Welcome!")
            case .rejected:
                Text("Registration is rejected. Please contact support.")
            }
            
            Button(action: {
                simulateRegistrationApproval()
            }) {
                Text("Process Registration")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
    private func simulateRegistrationApproval() {
        registrationStatus = .pending
        Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false) { _ in
            registrationStatus = Bool.random() ? .approved : .rejected
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
