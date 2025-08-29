//
//  LoginView.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 26/08/25.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                AppLogoView()
                
                VStack {
                    TextField(TextFieldPlaceholderText.email.title, text: $email)
                        .textInputAutocapitalization(.none)
                        .modifier(TextFieldModifiers())
                    SecureField(TextFieldPlaceholderText.password.title, text: $password)
                        .modifier(TextFieldModifiers())
                }
                
                NavigationLink {
                    Text("Forgot Password")
                } label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                CustomButtonView(action: {
                    print("Login Pressed")
                }, title: "Login")
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3) {
                        Text(FooterViewType.registration.title)
                        Text(FooterViewType.registration.subtitle)
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    LoginView()
}




