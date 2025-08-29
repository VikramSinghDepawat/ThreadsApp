//
//  RegistrationView.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 26/08/25.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var fullName: String = ""
    @State private var userName: String = ""
    @Environment(\.dismiss) var dismiss
    
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
                    TextField(TextFieldPlaceholderText.fullname.title, text: $fullName)
                        .textInputAutocapitalization(.none)
                        .modifier(TextFieldModifiers())
                    TextField(TextFieldPlaceholderText.username.title, text: $userName)
                        .textInputAutocapitalization(.none)
                        .modifier(TextFieldModifiers())
                }
                
                CustomButtonView(action: {
                    dismiss()
                }, title: "Sign Up")
                .padding(.vertical)
                
                Spacer()
                
                Divider()
                
                Button {
                    dismiss()
                } label: {
                    HStack(spacing: 3) {
                        Text(FooterViewType.login.title)
                        Text(FooterViewType.login.subtitle)
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
    RegistrationView()
}
