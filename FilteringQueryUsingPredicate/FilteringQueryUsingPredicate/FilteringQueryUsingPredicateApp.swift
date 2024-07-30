

import SwiftUI
import SwiftData

@main
struct FilteringQueryUsingPredicateApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for:User.self)
    }
}
