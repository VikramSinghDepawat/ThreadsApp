//
//  ExtractedView.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 27/08/25.
//

import SwiftUI

struct CustomButtonView: View {
    var action: () -> Void = {}
    var title: String = ""
    
    var body: some View {
        Button {
            print("Login Button Tapped")
        } label: {
            Text(title)
                .font(.headline)
                .fontWeight(.bold)
                .kerning(1)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, minHeight: 52)
                .background(Color.black)
                .cornerRadius(8)
                .padding()
        }
    }
}
