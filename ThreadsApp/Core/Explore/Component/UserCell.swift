//
//  UserCell.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 30/08/25.
//

import SwiftUI

struct UserCell: View {
    @State var state: FollowState = .follow
    var body: some View {
        HStack {
            ProfileImageView(size: .small, imageUrl: nil)
            
            VStack(alignment: .leading) {
                Text("Vikram Singh Depawat")
                    .fontWeight(.semibold)
                Text("@vikramdepawat")
            }
            .font(.footnote)
            
            Spacer()
            
            FollowButton(state: state)
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
