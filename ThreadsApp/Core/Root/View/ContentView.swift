//
//  ContentView.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 26/08/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = contentviewModel
    var body: some View {
        LoginView()
    }
}

#Preview {
    ContentView()
}
