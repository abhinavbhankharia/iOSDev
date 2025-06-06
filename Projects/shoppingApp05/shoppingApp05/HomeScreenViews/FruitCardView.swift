//
//  FruitCardView.swift
//  shoppingApp05
//
//  Created by Abhinav Bhankharia on 07/06/25.
//

import SwiftUI

let images: fruitModel = fruitModel(id: 1, title: .apple, image: "apple", price: "3.44$", color: "1")

struct FruitCardView: View {
    let fruits: fruitModel
    
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Text(fruits.title.rawValue)
                    .fontWeight(.bold)
                    .font(.system(.title3))
                    .foregroundColor(.black)
                Text(fruits.price)
                    .font(.system(.title3))
                    .foregroundColor(.black.opacity(0.7))
                Spacer()
            }
            .padding()
            .frame(width: 175, height: 150, alignment: .center)
            .background(Color(fruits.color))
            .cornerRadius(30)
            .padding()
            
            ZStack{
                Image(fruits.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 110)
            }.offset(y: 60)
        }
        .frame(width: 175, height: 250, alignment: .center)
    }
}

#Preview {
    FruitCardView(fruits: images)
}
