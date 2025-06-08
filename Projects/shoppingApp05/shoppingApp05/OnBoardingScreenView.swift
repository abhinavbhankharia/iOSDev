//
//  OnBoardingScreenView.swift
//  shoppingApp05
//
//  Created by Abhinav Bhankharia on 06/06/25.
//

import SwiftUI

struct OnBoardingScreenView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                Spacer()
                Image("img")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding()
                VStack(alignment: .leading, spacing: 10){
                    Text("Order your Favourite Fruits")
                        .fontWeight(.bold)
                        .font(.largeTitle)
                    Text("Eat Fresh Fruits and try to be healthy")
                        .font(.title3)
                        .foregroundColor(.black.opacity(0.7))
                }
                Spacer()
                NavigationLink(destination: HomeScreen()) {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("6"))
                        .frame(width: 280, height: 60, alignment: .trailing)
                        .overlay(
                            HStack(spacing: 10){
                                Text("Next")
                                    .font(.title)
                                    .fontWeight(.bold)
                                Image(systemName: "chevron.right")
                            }.foregroundColor(.black)
                       
                        )
                }
                Spacer()
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
        
    }
}

#Preview {
    OnBoardingScreenView()
}
