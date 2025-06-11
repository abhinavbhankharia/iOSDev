//
//  File.swift
//  PokemonApp09
//
//  Created by Abhinav Bhankharia on 11/06/25.
//

import Foundation


struct Pokemon: Identifiable, Codable {
    let id: Int
    let name: String
    let imageURL: String
    let type: String
    let weight: Int
    let height: Int
    let attack: Int
    let defense: Int
    let discription: String
    
}
