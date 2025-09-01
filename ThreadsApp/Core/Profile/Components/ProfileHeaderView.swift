//
//  ProfileHeaderView.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 01/09/25.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 12) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Charles leclerc")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Text("@charles_leclerc")
                            .font(.subheadline)
                    }
                    Text("Formula 1 driver for Scuderia AlphaTauri")
                        .font(.footnote)
                    Text("12 follower")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                Spacer()
                
                ProfileImageView(size: .small, imageUrl: nil)
            }
            
            Button {
                
            } label: {
                Text("Follow")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, minHeight: 32,  maxHeight: 32, alignment: .center)
                    .background(Color.black)
                    .cornerRadius(8)
            }
        }
    }
}

#Preview {
    ProfileHeaderView()
}
