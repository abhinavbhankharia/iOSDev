//
//  ContentView.swift
//  BreakingBadAPI08
//
//  Created by Abhinav Bhankharia on 10/06/25.
//

import SwiftUI

struct Info: Codable, Hashable{
   
    var author: String
    var quote: String
}

struct ContentView: View {
    @State private var infos = [Info]()
    var body: some View {
        NavigationView{
            List(infos, id: \.self){
                info in
                VStack(alignment: .leading){
                    Text("Author: \(info.author)")
                    Text("Quote: \(info.quote)")
                }
            }
            .task {
                await fetchData()
            }
        }
        .navigationTitle("Breaking Bad Quotes")
    }
    
    //create UL and fetch data
    func fetchData() async{
        guard let url = URL(string: "https://api.breakingbadquotes.xyz/v1/quotes/10") else {
            print("URL does not exist")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            //decoding the data
            if let decodedResponse = try? JSONDecoder().decode([Info].self, from: data){
                infos = decodedResponse
            }
            
        }catch{
            print("Invalid data or Failed to fetch request")
        }
    }
}

#Preview {
    NavigationView{
        ContentView()
    }
   
}
