

import SwiftUI
import SwiftData

@main
struct SwiftDataAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Task.self)
        }
    }
}
