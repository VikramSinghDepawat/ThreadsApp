//
//  FeedView.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 29/08/25.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0..<20) { _ in
                        FeedRowView()
                    }
                }
            }
            .refreshable {
                print("Debug: Refresh")
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    print("")
                } label: {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundStyle(Color(.black))
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        FeedView()
    }
}
