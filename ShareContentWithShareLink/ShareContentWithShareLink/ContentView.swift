

import SwiftUI

struct ContentView: View {
    var body: some View {
        let icon = Image(.icon)
        
//        ShareLink(item: URL(string: "https://apps.apple.com/de/app/justremember/id6461571293?l=en-GB")!) {
//            Label("Follow the link", systemImage: "apple.logo")
//        }
        
        ShareLink(item: icon, preview: SharePreview("JustRemember App", image: icon)) {
            Label("Click to share", systemImage: "platter.filled.top.and.arrow.up.iphone")
        }
    }
}

#Preview {
    ContentView()
}
