//
//  FeedRowView.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 29/08/25.
//

import SwiftUI

struct FeedRowView: View {
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                ProfileImageView(size: .small, imageUrl: nil)
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Vikram_Singh_Depawat")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Spacer()

                        Text("10h")
                            .font(.caption)
                            .foregroundStyle(Color(.systemGray3))
                        
                        Button {
                            print("more options pressed")
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundStyle(Color(.darkGray))
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    
                    Text("Formula 1 is the pinnacle of motorsport.")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    HStack(alignment: .center, spacing: 16) {
                        Button {
                            print("favorite pressed")
                        } label: {
                            Image(systemName: "heart")
                        }
                        
                        Button {
                            print("comment pressed")
                        } label: {
                            Image(systemName: "bubble.right")
                        }
                        
                        Button {
                            print("Reshare pressed")
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        
                        Button {
                            print("Share pressed")
                        } label: {
                            Image(systemName: "paperplane")
                        }
                    }
                    .foregroundStyle(Color(.black))
                    .padding(.vertical, 8)
                    
                    Text("2 replies")
                        .font(.caption)
                        .foregroundStyle(Color(.gray))
                }
            }
            Divider()
        }
        .padding()
    }
}

#Preview {
    FeedRowView()
}
