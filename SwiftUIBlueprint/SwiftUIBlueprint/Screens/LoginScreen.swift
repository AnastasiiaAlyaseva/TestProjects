

import SwiftUI


struct LoginScreen: View {
    @ObservedObject var viewModel: LoginViewModel = LoginViewModel()
    
    var body: some View {
        VStack{
            
            Spacer()
            
            VStack {
                TextField("UsernameField", text: $viewModel.username)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .padding(.top, 20)
                
                Divider()
                
                SecureField("PasswordField", text: $viewModel.password)
                    .padding(.top, 20)
                
                Divider()
            }
            Spacer()
            
            Button(
                action: viewModel.login,
                label: {
                    Text("LoginButton")
                        .font(.system(size: 24, weight: .bold, design: .default))
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            )
        }
        .padding(30)
    }
}

#Preview {
    LoginScreen()
}
