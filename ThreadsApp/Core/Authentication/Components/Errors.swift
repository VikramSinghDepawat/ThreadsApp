//
//  Files.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 27/08/25.
//

import Foundation

enum RegistrationError: Error {
    case invalidEmail
    case invalidPassword
    case passwordMismatch
}

enum LoginError: Error {
    case invalidEmail
    case invalidPassword
}
