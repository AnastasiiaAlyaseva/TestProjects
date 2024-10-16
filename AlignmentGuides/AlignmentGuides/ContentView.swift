

import SwiftUI

struct ContentView: View {
    var body: some View {
        //        VStack(alignment: .leading) {
        //            Text("Hello, world!")
        //                .alignmentGuide(.leading) { d in d[.trailing] }
        //            Text("This is a longer line of text")
        //        }
        //        .background(.yellow)
        //        .frame(width: 400, height: 400)
        //        .background(.green)
        //    }
        
        VStack(alignment: .leading) {
            ForEach(0..<10) { position in
                Text("Number \(position)")
                    .alignmentGuide(.leading) { _ in Double(position) * -10 }
            }
        }
        .background(.yellow)
        .frame(width: 400, height: 400)
        .background(.green)
    }
}

#Preview {
    ContentView()
}
