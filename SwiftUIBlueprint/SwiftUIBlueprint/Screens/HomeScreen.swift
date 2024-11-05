

import SwiftUI

struct HomeScreen: View {
    @ObservedObject var viewModel: HomeViewModel = HomeViewModel()
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Welcome!")
                .font(.system(size: 24, weight: .bold, design: .default))
            
            Spacer()
            
            Button(
                action: viewModel.logout,
                label: {
                    Text("Logout")
                        .modifier(MainButton(color: Color.green))
                }
            )
        }
        .padding(30)
    }
}


#Preview {
    HomeScreen()
}
