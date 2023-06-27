import SwiftUI

@main
struct MailViewWithStorageApp: App {
    var body: some Scene {
        WindowGroup {
            Mailbox(messages: exampleMessages)
        }
    }
}
