

import SwiftUI

struct ContentView: View {
    @State private var count = 10
    
    var body: some View {
        VStack {
            Text("Value: \(count)")
            Button("Increment") {
                count += 1
            }
            
            Button("Decrement") {
                count -= 1
            }
        }
        .accessibilityElement()
        .accessibilityLabel("Value")
        .accessibilityValue(String(count))
        .accessibilityAdjustableAction { direction in
            switch direction {
            case .increment:
                count += 1
            case .decrement:
                count -= 1
            default:
                print("No handled")
            }
        }
    }
}

#Preview {
    ContentView()
}
