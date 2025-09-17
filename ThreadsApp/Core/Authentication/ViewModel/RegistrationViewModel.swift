//
//  RegistrationViewModel.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 15/09/25.
//

import Foundation

@MainActor
class RegistrationViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var fullName: String = ""
    @Published var userName: String = ""
    
    func createUser() async throws {
        try await AuthService.shared.createUser(
            email: email,
            password: password,
            fullName: fullName,
            userName: userName
        )
    }
}
