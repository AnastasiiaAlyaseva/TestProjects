

import SwiftUI

@Observable
class User: Codable {
    enum CodingKeys: String, CodingKey {
        case _name = "name"
    }
    var name = "Anastasiia"
}

struct ContentView: View {
    var body: some View {
        Button("Encode Anastasiia", action: encodeAnastasiia)
    }
    
    func encodeAnastasiia() {
        let data = try! JSONEncoder().encode(User())
        let str = String(decoding: data, as: UTF8.self)
        print(str)
    }
}

#Preview {
    ContentView()
}
