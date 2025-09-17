//
//  RegistrationView.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 26/08/25.
//

import SwiftUI

struct RegistrationView: View {
    @StateObject var viewModel: RegistrationViewModel = RegistrationViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                AppLogoView()
                
                VStack {
                    TextField(TextFieldPlaceholderText.email.title, text: $viewModel.email)
                        .textInputAutocapitalization(.none)
                        .modifier(TextFieldModifiers())
                    SecureField(TextFieldPlaceholderText.password.title, text: $viewModel.password)
                        .modifier(TextFieldModifiers())
                    TextField(TextFieldPlaceholderText.fullname.title, text: $viewModel.fullName)
                        .textInputAutocapitalization(.none)
                        .modifier(TextFieldModifiers())
                    TextField(TextFieldPlaceholderText.username.title, text: $viewModel.userName)
                        .textInputAutocapitalization(.none)
                        .modifier(TextFieldModifiers())
                }
                
                CustomButtonView(action: {
                    Task {
                        try await viewModel.createUser()
                    }
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
