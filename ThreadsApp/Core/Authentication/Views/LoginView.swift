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
                    TextField("Enter your email", text: $email)
                        .textFieldStyle(CustomTextFieldStyle())
                    SecureField("Enter your password", text: $password)
                        .textFieldStyle(CustomTextFieldStyle())
                }
                .padding()
                
                NavigationLink {
                    Text("Forgot Password")
                } label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        
                        .padding(.top)
                        .padding(.trailing, 28)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                ExtractedView()

                Spacer()
                
                FooterView(title: "Don't have an account?", subtitle: "Sign up")
            }
        }
    }
}

#Preview {
    LoginView()
}




