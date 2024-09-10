

import SwiftUI

struct ContentView: View {
    @State private var output = ""
    
    var body: some View {
        Text(output)
            .task {
                await fetchReadings()
            }
    }
    
    func fetchReadings() async {
        //        do {
        //            let url = URL(string: "https://hws.dev/readings.json")!
        //            let (data, _) = try await URLSession.shared.data(from: url)
        //            let readins = try JSONDecoder().decode([Double].self, from: data)
        //        } catch {
        //            print("Download error")
        //        }
        let fetchTask = Task {
            let url = URL(string: "https://hws.dev/readings.json")!
            let (data, _) = try await URLSession.shared.data(from: url)
            let reading = try JSONDecoder().decode([Double].self, from: data)
            return "Found \(reading.count) readings"
        }
        let result = await fetchTask.result
        
        //        do {
        //            output = try result.get()
        //        } catch {
        //            output = "Error: \(error.localizedDescription)"
        //        }
        switch result {
        case .success(let str):
            output = str
        case .failure(let error):
            output = "Error: \(error.localizedDescription)"
        }
    }
}

#Preview {
    ContentView()
}
