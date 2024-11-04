

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
                        .font(.system(size: 24, weight: .bold, design: .default))
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .foregroundColor(.white)
                        .background(.green)
                        .cornerRadius(10)
                }
            )
        }
        .padding(30)
    }
}


#Preview {
    HomeScreen()
}
