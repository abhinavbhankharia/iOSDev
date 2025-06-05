//
//  ContentView.swift
//  SplashScreen04
//
//  Created by Abhinav Bhankharia on 05/06/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            Text("Home Screen of Splash Screen")
                .foregroundColor(.white)
                .font(.system(size: 30))
                .bold()
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
