/import SwiftUI

// not used enum !!! why ?
enum ToggleStyleType {
    case switchStyle(SwitchToggleStyle)
    case checkboxStyle(CheckboxToggleStyle)
}

struct ContentView: View {
    @State private var isOn = false

    var body: some View {
        VStack {
           // let toggleStyle: ToggleStyle = isOn ? .switch : CheckboxToggleStyle()
            let ttt = ToggleStyleType.switchStyle(.switch)
//
//            let toggleStyle: ToggleStyleType = isOn ? ToggleStyleType.switchStyle(.switch) : ToggleStyleType.checkboxStyle(CheckboxToggleStyle())
//
//            var finalToggleStyle: ToggleStyle
//            switch toggleStyle {
//            case let .switchStyle(test):
//                finalToggleStyle = test
//            case let .checkboxStyle(test2):
//                finalToggleStyle = test2
//            }
            Toggle(isOn: $isOn) {
                Text("Toggle")
            }
            /// Don't call this initializer directly. Instead, use the
            /// ``ToggleStyle/switch`` static variable to create this style:
            ///
            ///     Toggle("Enhance Sound", isOn: $isEnhanced)
            ///         .toggleStyle(.switch)
            ///
            
            .toggleStyle(finalToggleStyle)
            .padding()
        }
    }
}

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label

            Spacer()

            Button(action: {
                configuration.isOn.toggle()
            }) {
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                    .foregroundColor(.blue)
                    .font(.system(size: 30))
            }
            .buttonStyle(PlainButtonStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
