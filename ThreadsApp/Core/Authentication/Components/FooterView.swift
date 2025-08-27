//
//  FooterView.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 27/08/25.
//

import SwiftUI

struct FooterView: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        Divider()
        
        NavigationLink {
            Text("Registration Screen")
                .foregroundColor(.gray)
        } label: {
            HStack(spacing: 3) {
                Text(title)
                Text(subtitle)
                    .fontWeight(.semibold)
            }
            .foregroundColor(.black)
            .font(.footnote)
        }
        .padding(.vertical, 16)
    }
}
