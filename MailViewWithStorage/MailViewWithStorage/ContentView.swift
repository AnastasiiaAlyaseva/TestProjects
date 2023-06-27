import SwiftUI
import MessageUI

struct Mailbox: View {
    let messages: [Message]
    
    var body: some View {
        NavigationView {
            List(messages) { message in
                NavigationLink(destination: MessageDetail(message: message)) {
                    VStack(alignment: .leading) {
                        Text(message.sender)
                            .font(.headline)
                        Text(message.subject)
                            .font(.subheadline)
                    }
                }
            }
            .navigationTitle("MailBox")
        }
    }
}

struct Message: Identifiable {
    let id = UUID()
    let sender: String
    let subject: String
    let body: String
}

let exampleMessages = [
    Message(sender: "Anna", subject: "Hello", body: "How are you doing?"),
    Message(sender: "Alex", subject: "Meeting", body: "We have a meeting planned for tomorrow"),
    Message(sender: "Dina", subject: "Question", body: "I need your help with the documents")
]

struct Mailbox_Previews: PreviewProvider {
    static var previews: some View {
        Mailbox(messages: exampleMessages)
    }
}

