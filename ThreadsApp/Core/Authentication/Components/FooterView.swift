//
//  FooterView.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 27/08/25.
//

import SwiftUI

enum FooterViewType {
    case registration
    case login
    
    var title: String {
        switch self {
        case .registration:
            return "Don't have an account?"
        case .login:
            return "Already have an account?"
        }
    }
    
    var subtitle: String {
        switch self {
        case .registration:
            return "Sign Up"
        case .login:
            return "Sign In"
        }
    }
}
