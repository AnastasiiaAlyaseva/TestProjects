import SwiftUI

@main
struct ComparisonApp: App {
    @StateObject var counter = Counter()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(counter)
        }
    }
}
