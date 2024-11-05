

import SwiftUI


struct LoginScreen: View {
    @ObservedObject var viewModel: LoginViewModel = LoginViewModel()
    
    var body: some View {
        VStack{
            
            Spacer()
            
            VStack {
                TextField("Username", text: $viewModel.username)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .padding(.top, 20)
                
                Divider()
                
                SecureField("Password", text: $viewModel.password)
                    .padding(.top, 20)
                
                Divider()
            }
            Spacer()
            
            Button(
                action: viewModel.login,
                label: {
                    Text("Login")
                        .modifier(MainButton())
                }
            )
        }
        .padding(30)
    }
}

#Preview {
    LoginScreen()
}
