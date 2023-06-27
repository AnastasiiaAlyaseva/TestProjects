import SwiftUI

struct ContentView: View {
    
    @State var selection: String = "Sergey"
    let filterName: [String] = ["Sergey", "Anastasiia", "Michael", "Natalia"]
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.blue
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        Picker("Name", selection: $selection) {
            ForEach(filterName.indices, id: \.self) { index in
                Text(filterName[index]).tag(filterName[index])
            }
        }
        .pickerStyle(SegmentedPickerStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
