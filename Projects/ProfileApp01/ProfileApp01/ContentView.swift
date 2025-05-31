//
//  ContentView.swift
//  ProfileApp01
//
//  Created by Abhinav Bhankharia on 31/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack{
                Image("background").resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .center){
                    Spacer()
                    VStackLayout(alignment: .center, spacing: 20){
                        Image("myImage")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 180, height: 180, alignment: .top)
                            .clipShape(Circle())
                            .shadow(color: .pink, radius: 5, x: 5, y: 5)
                        Text("Abhinav Bhankharia")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .font(.system(.largeTitle))
                            .shadow(radius: 5)
                        Text("iOS Developer | Frontend Developer")
                            .foregroundColor(.white)
                            .font(.body)
                        HStack(spacing: 40){
                            Image(systemName: "heart.circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            Image(systemName: "network")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            Image(systemName: "message.circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            Image(systemName: "phone.circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .foregroundColor(.white)
                        .frame(width: 250, height: 50, alignment: .center)
                        .shadow(color: .pink, radius: 5, y: 8)
                    }
                    Spacer()
                    VStack(alignment: .center, spacing: 30){
                        RoundedRectangle(cornerRadius: 120)
                            .frame(width: 200, height: 50, alignment: .center)
                            .foregroundColor(.white)
                            .shadow(color: .pink, radius: 8, y: 8)
                            .overlay(
                                Text("Follow")
                                .fontWeight(.bold)
                                .foregroundColor(.pink)
                                .font(.system(size: 30))
                            )
                        HStack(alignment: .center, spacing: 60){
                            VStack{
                                Text("1775")
                                    .font(.title)
                                    .foregroundColor(.pink)
                                Text("Appreciations")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            VStack{
                                Text("800")
                                    .font(.title)
                                    .foregroundColor(.pink)
                                Text("Followers")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            VStack{
                                Text("231")
                                    .font(.title)
                                    .foregroundColor(.pink)
                                Text("Following")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                        }
                        Text("About Me")
                            .font(.system(size: 30))
                        Text("I'm a iOS Frontend Developer. Welcome to iOS Learning Series. Let's dive deeper and create some more exciting projects.")
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .lineLimit(4)
                            .opacity(0.7)
                    }
                } .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
