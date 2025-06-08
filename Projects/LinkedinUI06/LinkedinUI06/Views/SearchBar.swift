//
//  SearchBarView.swift
//  LinkedinUI06
//
//  Created by Abhinav Bhankharia on 08/06/25.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack(alignment: .center){
            
            //profile Image
            Image("demo")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 50, height: 50)
            
            //Search Bar
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.blue.opacity(0.1))
                .frame(width: 270, height: 30)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray)
                        Spacer()
                    }.padding()
                )
            
            //Messages Box
            
            Image(systemName: "ellipses.bubble.fill")
                .resizable()
                .foregroundColor(.gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
            
        }.padding(.top)
    }
}

#Preview {
    SearchBar()
}
