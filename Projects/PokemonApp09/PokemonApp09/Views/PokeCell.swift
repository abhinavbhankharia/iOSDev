//
//  PokeCell.swift
//  PokemonApp09
//
//  Created by Abhinav Bhankharia on 11/06/25.
//

import SwiftUI
import Kingfisher

let samplePoke = Pokemon(id: 1, name: "test", imageUrl: "https://firebasestorage.googleapis.com/v0/b/pokedex-bb36f.appspot.com/o/pokemon_images%2F2CF15848-AAF9-49C0-90E4-28DC78F60A78?alt=media&token=15ecd49b-89ff-46d6-be0f-1812c948e334", type: "fire", weight: 10, height: 10, attack: 10, defense: 10, description: "test another one")

let sampleVM = PokemonViewModel()

struct PokeCell: View {
    
    let pokemon: Pokemon
    let viewModel: PokemonViewModel
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading){
                Text(pokemon.name.capitalized)
                    .font(.system(size: 25, weight: .semibold, design: .serif ))
                    .foregroundColor(.black)
                    .padding(.top, 20)
                    .padding(.leading)
                HStack{
                    Text(pokemon.type.capitalized)
                        .font(.system(size: 16, weight: .medium, design: .serif ))
                        .foregroundColor(.black)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(RoundedRectangle(cornerRadius: 14)
                            .fill(Color.white.opacity(0.2)))
                            .frame(width: 100, height: 24)
                    
                    KFImage(URL(string: pokemon.imageUrl))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.bottom, .trailing], 4)
                }
            }
        }.background(Color(viewModel.backgroundColor(forType: pokemon.type)).opacity(0.3))
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .padding(.all, 6)
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .shadow(color: .black, radius: 8, x: 8, y: 8)
            .shadow(color: .white, radius: 10, x: -10, y: -10)
    }
}

#Preview {
    PokeCell(pokemon: samplePoke, viewModel: sampleVM)
}
