//
//  File.swift
//  PokemonApp09
//
//  Created by Abhinav Bhankharia on 11/06/25.
//

import Foundation


struct Pokemon: Identifiable, Decodable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
    let weight: Int
    let height: Int
    let attack: Int
    let defense: Int
    let description: String
    
}
