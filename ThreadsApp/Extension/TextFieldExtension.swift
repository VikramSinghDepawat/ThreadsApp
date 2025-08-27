//
//  TextFieldExtesion.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 26/08/25.
//

import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.vertical)
            .padding(.horizontal, 16)
            .background(
                Color(UIColor.systemGray6)
            )
            .cornerRadius(8)
    }
}
