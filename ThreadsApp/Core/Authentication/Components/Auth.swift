//
//  Auth.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 27/08/25.
//

import Foundation

enum TextFieldPlaceholderText {
    case email
    case password
    case fullname
    case username
    
    var title: String {
        switch self {
        case .email:
            return "Enter your email"
        case .password:
            return "Enter your password"
        case .fullname:
            return "Enter your fullname"
        case .username:
            return "Enter your username"
        }
    }
}
