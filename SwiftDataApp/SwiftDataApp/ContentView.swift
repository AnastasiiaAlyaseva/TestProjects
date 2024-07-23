
import SwiftUI
import SwiftData

struct ContentView: View {
    @Query private var tasks: [Task]
    @Environment(\.modelContext) private var modelContext
    
    @State private var taskName = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("Enter the task", text: $taskName)
                        .textFieldStyle(.roundedBorder)
                    
                    Button("Save") {
                        let task = Task(name: taskName)
                        modelContext.insert(task)
                        taskName = ""
                    }
                    .buttonStyle(.borderedProminent)
                }
                List(tasks) { task in
                    Text(task.name)
                        .swipeActions{
                            Button("Delete", role: .destructive){
                                modelContext.delete(task)
                            }
                            
                            Button("Update") {
                                task.name = "New name"
                            }
                        }
                }
            }
            .navigationTitle("Tasks")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
