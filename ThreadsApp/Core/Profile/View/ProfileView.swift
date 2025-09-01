//
//  ProfileView.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 29/08/25.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: ProfileThreadFilters = .threads
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ProfileHeaderView()
                
                ExtractedView()
                    .padding(.vertical, 8)
            }
            .scrollIndicators(.hidden)
        }
        .padding(.horizontal)
    }
}

#Preview {
    ProfileView()
}

struct ExtractedView: View {
    @State private var selectedFilter: ProfileThreadFilters = .threads
    @Namespace var animation
    private var filterBGWidth: CGFloat {
        let count = CGFloat(ProfileThreadFilters.allCases.count)
        return UIScreen.main.bounds.width / count - 16
    }
    var body: some View {
        VStack {
            HStack {
                ForEach(ProfileThreadFilters.allCases) { filter in
                    VStack {
                        Text(filter.title)
                            .font(.subheadline)
                            .fontWeight(selectedFilter == filter ? .semibold : .regular)
                        
                        if selectedFilter == filter {
                            Rectangle()
                                .foregroundStyle(.black)
                                .frame(width: filterBGWidth, height: 1)
                                .matchedGeometryEffect(id: "item", in: animation)
                        } else {
                            Rectangle()
                                .frame(width: filterBGWidth, height: 1)
                                .foregroundStyle(.clear)
                        }
                    }
                    .onTapGesture {
                        withAnimation(.spring()) {
                            selectedFilter = filter
                        }
                    }
                }
            }
            
            LazyVStack {
                ForEach(0...10, id: \.self) { threads in
                    FeedRowView()
                }
            }
        }
    }
}
