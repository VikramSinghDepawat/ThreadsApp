//
//  TextFieldModifiers.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 26/08/25.
//

import SwiftUI

struct TextFieldModifiers: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(16)
            .background(Color(UIColor.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 16)
    }
}
