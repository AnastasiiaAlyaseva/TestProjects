//
//  ContentView.swift
//  List'sPart2
//
//  Created by Anastasiia Alyaseva on 05.04.2023.
//

import SwiftUI
import CoreData

//@objc(ExpenseItem)
//class ExpenseItem: NSManagedObject, Identifiable {
//    @NSManaged var name: String
//    @NSManaged var type: String
//    @NSManaged var amount: Double
//    let id = UUID()

//@nonobjc public class func fetchRequest() -> NSFetchRequest<ExpenseItem> {
//    return NSFetchRequest<ExpenseItem>(entityName: "ExpenseItem")
// }
//}

class Expenses: ObservableObject{
    @Published var items = [ExpenseItem]()
    
    let context: NSManagedObjectContext
    
    init() {
        let container = NSPersistentContainer(name: "ExpenseList")
        container.loadPersistentStores { storeDescription, error in
            if let error = error {
                print("Error loading CoreData: \(error.localizedDescription)")
            }
        }
        context = container.viewContext
        
        do {
            items = try context.fetch(ExpenseItem.fetchRequest())
        } catch {
            print("error")
        }
    }
    
    func addExpense(name: String, type: String, amount: Double) {
        let newExpense = ExpenseItem(context: context)
        newExpense.name = name
        newExpense.type = type
        newExpense.amount = amount
        
        do {
            try context.save()
            items.append(newExpense)
        } catch {
            print("Error saving expense: \(error.localizedDescription)")
        }
    }
    
    func deleteExpense(at offsets: IndexSet) {
        offsets.forEach { index in
            let expense = items[index]
            context.delete(expense)
            do {
                try context.save()
                items.remove(at: index)
            } catch {
                print("Error deleting expense: \(error.localizedDescription)")
            }
        }
    }
}



struct ContentView: View {
    @StateObject var expenses = Expenses()
    @State private var inputText: String = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(expenses.items, id: \.self) { item in
                    Text(item.name ?? "")
                }
                .onDelete(perform: expenses.deleteExpense)
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button {
                    expenses.addExpense(name: "Test", type: "Personal", amount: 5)
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//struct ContentView: View {
//    @State private var inputText: String = ""
//    var body: some View {
//        VStack(spacing: 20) {
//            TextField("Enter some text", text: $inputText)
//                .padding()
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//            Text("You entered: \(inputText)")
//                .font(.title)
//        }
//        .padding()
//    }
//}
