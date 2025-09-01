//
//  FollowButton.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 30/08/25.
//

import SwiftUI

struct FollowButton: View {
    var state: FollowState = .following
    
    var body: some View {
        Button {
            // Your action here
            print("Following clicked")
        } label: {
            Text(state.title)
                .foregroundColor(state == .follow ? .black : Color(.systemGray4))
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                )
        }
    }
}

#Preview {
    FollowButton()
}
