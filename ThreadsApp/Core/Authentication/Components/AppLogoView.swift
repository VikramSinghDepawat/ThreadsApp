//
//  AppLogoView.swift
//  ThreadsApp
//
//  Created by Vikram Singh Depawat on 26/08/25.
//

import SwiftUI

struct AppLogoView: View {
    var body: some View {
        Image("AppLogo")
            .resizable()
            .scaledToFit()
            .frame(width: 120, height: 120)
            .padding()
    }
}

#Preview {
    AppLogoView()
}
