//
//  EditProfileView.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 01/09/25.
//

import SwiftUI

struct EditProfileView: View {
    
    @State private var bio = ""
    @State private var link = ""
    @State private var isPrivateProfile: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground)
                    .ignoresSafeArea(edges: [.bottom, .horizontal])
                
                VStack {
                   // Name and Image
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Name")
                                .fontWeight(.semibold)
                            Text("Vikram singh")
                        }
                        Spacer()
                        ProfileImageView()
                    }
                    Divider()
                    
                    // Bio
                    VStack(alignment: .leading) {
                        Text("Bio")
                            .fontWeight(.semibold)
                        
                        TextField("Enter your bio...", text: $bio)
                    }
                    Divider()
                    
                    // Link
                    VStack(alignment: .leading) {
                        Text("Link")
                            .fontWeight(.semibold)
                        
                        TextField("Add link...", text: $link)
                    }
                    Divider()
                    
                    Toggle("Private profile", isOn: $isPrivateProfile)
                }
                .font(.footnote)
                .padding()
                .background(.white)
                .cornerRadius(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
                .padding(.horizontal)
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        print("Cancel button tapped")
                    } label: {
                        Text("Cancel")
                            .fontWeight(.regular)
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        print("Done button tapped")
                    } label: {
                        Text("Done")
                            .fontWeight(.semibold)
                    }

                }
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .tint(.black)
        }
    }
}

#Preview {
    EditProfileView()
}
