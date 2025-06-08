//
//  HomeScreen.swift
//  LinkedinUI06
//
//  Created by Abhinav Bhankharia on 08/06/25.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(spacing: 20) {
            ProfileAndPostView()
            PostView()
        }
        
    }
}

#Preview {
    HomeScreen()
}
