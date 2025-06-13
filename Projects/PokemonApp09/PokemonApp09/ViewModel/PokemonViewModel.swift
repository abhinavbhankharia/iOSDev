//
//  PokemonViewModel.swift
//  PokemonApp09
//
//  Created by Abhinav Bhankharia on 11/06/25.
//

import Foundation
import SwiftUI

class PokemonViewModel: ObservableObject {
    
    //object of pokemon model
    @Published var pokemon = [Pokemon]()
    //  create base url of the API
    let baseURL = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    //calling the fetch method to call api
    init() {
        fetchData()
        print(pokemon)
    }
    
    //Method to fetch data from API
    func fetchData(){
        // fetch data from url
        guard let url = URL(string: baseURL) else { return }
        URLSession.shared.dataTask(with: url)
        {(data, response, error) in
            
            //remove extra string and null from data
            guard let data = data?.parseData(removeString: "null,") else {return}
            
            // decoode the data
            guard let pokemon = try? JSONDecoder().decode([Pokemon].self, from: data) else {return}
            
            //storing the data
            DispatchQueue.main.async{
                self.pokemon = pokemon
            }
        }.resume()
        print(pokemon.count)
    }
    
    //Method to add specidic background based on the pokemon type
    func backgroundColor(forType type: String) -> UIColor {
        switch type {
        case "bug": return UIColor(named: "Bug") ?? .gray
        case "dragon": return UIColor(named: "Dragon") ?? .gray
        case "electric": return UIColor(named: "Electric") ?? .gray
        case "fairy": return UIColor(named: "Fairy") ?? .gray
        case "fighting": return UIColor(named: "Fighting") ?? .gray
        case "fire": return UIColor(named: "Fire") ?? .gray
        case "flying": return UIColor(named: "Flying") ?? .gray
        case "grass": return UIColor(named: "Grass") ?? .gray
        case "ground": return UIColor(named: "Ground") ?? .gray
        case "ice": return UIColor(named: "Ice") ?? .gray
        case "normal": return UIColor(named: "Normal") ?? .gray
        case "poison": return UIColor(named: "Poison") ?? .gray
        case "psychic": return UIColor(named: "Psychic") ?? .gray
        case "rock": return UIColor(named: "Rock") ?? .gray
        case "steel": return UIColor(named: "Steel") ?? .gray
        case "water": return UIColor(named: "Water") ?? .gray
        default: return .gray
        }
    }
}

//an extension to remove null and string format from retrived data
extension Data {
    func parseData(removeString string: String) -> Data? {
        
        let dataAsString = String(data: self, encoding: .utf8)
        
        //replacing the occurance of unwanted string(sentances) with " "
        let parsedDataString = dataAsString?.replacingOccurrences(of: string, with: "")
         
        //return data in the form of utf8 format
        guard let data = parsedDataString?.data(using: .utf8) else {return nil}
        print("Here is the data")
        print(data)
        return data
        
    }
}
