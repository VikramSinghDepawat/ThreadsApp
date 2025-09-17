//
//  AuthService.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 15/09/25.
//

import FirebaseAuth

@MainActor
class AuthService {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        userSession = Auth.auth().currentUser!
    }
    
    static let shared = AuthService()
    
    func signIn(email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            print("Debug: Signed in user: \(result.user.uid)")
        } catch {
            print("Debug: Error signing in: \(error.localizedDescription)")
            throw error
        }
    }
    
    func createUser(email: String, password: String, fullName: String, userName: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            print("Debug: User created: \(result.user.uid)")
        } catch {
            print("Debug: Error creating user: \(error.localizedDescription)")
        }
    }
}
