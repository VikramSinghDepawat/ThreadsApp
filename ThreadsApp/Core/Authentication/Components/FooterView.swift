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
            return "Sign in"
        case .login:
            return "Sing up"
        }
    }
}

struct FooterView: View {
    let type: FooterViewType
    
    var body: some View {
        Divider()
        
        NavigationLink {
            Text("Registration Screen")
                .foregroundColor(.gray)
        } label: {
            HStack(spacing: 3) {
                Text(type.title)
                Text(type.subtitle)
                    .fontWeight(.semibold)
            }
            .foregroundColor(.black)
            .font(.footnote)
        }
        .padding(.vertical, 16)
    }
}
