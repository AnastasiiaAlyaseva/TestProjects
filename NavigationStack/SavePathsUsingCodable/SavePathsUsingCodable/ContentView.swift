

import SwiftUI

@Observable
class PathStore {
    var path: NavigationPath {
        didSet {
            save()
        }
    }
    private let savePath = URL.documentsDirectory.appending(path: "SavePath")
    
    init() {
        if let data = try? Data(contentsOf: savePath){
            if let decoded = try? JSONDecoder().decode(NavigationPath.CodableRepresentation.self, from: data){
                path = NavigationPath(decoded)
                return
            }
        }
        path = NavigationPath()
    }
    
    func save() {
        guard let representation = path.codable else { return }
        
        do {
            let data = try JSONEncoder().encode(representation)
            try data.write(to: savePath)
        } catch {
            print("Failed to save navigation data")
        }
    }
}


struct DetailView: View {
    var number: Int
    
    var body: some View {
        NavigationLink("Go to rundom number", value: Int.random(in:0...1000))
            .navigationTitle("Number: \(number)")
    }
}

struct ContentView: View {
    @State private var pathStore = PathStore()
    
    var body: some View {
        NavigationStack(path: $pathStore.path) {
            DetailView(number: 0)
                .navigationDestination(for: Int.self){ i in
                    DetailView(number: i)
                }
        }
    }
}

#Preview {
    ContentView()
}
