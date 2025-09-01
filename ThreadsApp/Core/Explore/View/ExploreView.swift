//
//  ExploreView.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 29/08/25.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText: String = ""
    @State var state: FollowState = .follow
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0..<10, id: \.self) { user in
                        VStack {
                            UserCell(state: state)
                            Divider()
                        }
                        .padding(.vertical, 4)                       
                    }
                }
            }
            .searchable(text: $searchText, prompt: "Search")
            .navigationBarTitle("Search")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    ExploreView()
}
