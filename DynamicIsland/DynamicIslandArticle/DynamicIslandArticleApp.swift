import SwiftUI

struct NotificationModel {
    var title: String
    var content: String
    
}

@main
struct DynamicIslandArticleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .overlay(alignment: .top) {
                    GeometryReader { proxy in
                        let size = proxy.size
                        NotificationView(size: size)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                    }
                    .ignoresSafeArea()
            }
        }
    }
}
