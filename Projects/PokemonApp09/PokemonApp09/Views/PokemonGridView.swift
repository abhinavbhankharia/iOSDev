//
//  PokemonGridView.swift
//  PokemonApp09
//
//  Created by Abhinav Bhankharia on 11/06/25.
//

import SwiftUI

struct PokemonGridView: View {
    
    private let gridItem = [GridItem(.flexible()), GridItem(.flexible())]
    
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.2), Color.pink.opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                ScrollView{
                    LazyVGrid(columns: gridItem, spacing: 16){
                        ForEach(viewModel.pokemon){ pokemon in
                            NavigationLink {
                                PokemonDetailView(viewModel: viewModel, pokemon: pokemon)
                            } label: {
                                PokeCell(pokemon: pokemon, viewModel: viewModel)
                            }

                        }
                    }
                }.navigationTitle("Pokemon Club \(viewModel.pokemon.count)")
            }
        }
    }
}

#Preview {
    PokemonGridView()
}
