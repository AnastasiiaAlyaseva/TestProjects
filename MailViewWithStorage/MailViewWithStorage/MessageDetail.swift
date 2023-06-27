import SwiftUI
import MessageUI

struct MessageDetail: View {
    let message: Message
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(message.sender)
                .font(.title)
            Text(message.subject)
                .font(.subheadline)
            Text(message.body)
                .padding(.top)
        }
        .foregroundColor(.white)
        .background(.blue.opacity(0.8))
        .cornerRadius(10)
        .padding(.horizontal, 16)
        .padding(.bottom, 10)
        
        Spacer()
        
        .padding()
        .navigationTitle("Message")
    }
    
}


