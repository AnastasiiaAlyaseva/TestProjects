import SwiftUI

struct ChildView: View {
    @EnvironmentObject var counter: Counter
    
    var body: some View {
        VStack {
            Text("Состояние: \(counter.number)")
            Button("Увеличить состояние") {
                counter.number += 1
                print("Состояние: \(counter.number)")
            }
        }
    }
}

//struct ChildView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChildView()
//    }
//}
