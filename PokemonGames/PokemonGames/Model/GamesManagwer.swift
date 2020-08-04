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
            let task = session.dataTask(with: url, completionHandler: handler(data:respone:error:))
            task.resume()
        }
    }
    
    func handler(data: Data?, respone: URLResponse?, error: Error?) {
        if error != nil {
            print(error!)
            return
        }
        if let safedata = data {
            let dataString = String(data:safedata, encoding: .utf8)
//            viewController.generationtext.text = dataString ?? "nothing found"
        }
    }
}

