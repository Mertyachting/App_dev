//
//  GamesManagwer.swift
//  PokemonGames
//
//  Created by Mert Sevindik on 03.08.20.
//  Copyright © 2020 Mert Sevindik. All rights reserved.
//


import Foundation

struct GamesManger {
    
    let gamesURL = "https://pokeapi.co/api/v2/generation/"
    
    func enterGeneration(name: String) {
        let newUrl = "\(gamesURL)\(name)/"
        performRequest(urlString: newUrl)
    }
    
    func performRequest(urlString: String) {
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                if let safedata = data {
                    self.parseJSON(pokemon: safedata)
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(pokemon: Data) {
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(GamesData.self, from: pokemon)
            viewController.generationtext.text = decodedData.main_region.name
            print(decodedData.id, decodedData.main_region.name, decodedData.main_region.url)
        } catch {
            print(error)
        }
        
    }
}

