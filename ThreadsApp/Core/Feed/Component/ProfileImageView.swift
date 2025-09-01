//
//  ProfileImageView.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 29/08/25.
//

import SwiftUI

struct ProfileImageView: View {
    var size: AvatarSize = .small
    var imageUrl: String?
    
    var body: some View {
        if let url = imageUrl, !url.isEmpty {
            AsyncImage(url: URL(string: url), content: { image in
                image
                    .resizable()
            }, placeholder: {
                Image(systemName: "person.circle")
                    .resizable()
            })
            .scaledToFit()
            .frame(width: CGFloat(size.rawValue), height: CGFloat(size.rawValue))
            .clipShape(Circle())
        } else {
            Image(systemName: "person.circle")
                .resizable()
                .scaledToFit()
                .frame(width: CGFloat(size.rawValue), height: CGFloat(size.rawValue))
                .clipShape(Circle())
        }
    }
}

#Preview {
    ProfileImageView()
}
