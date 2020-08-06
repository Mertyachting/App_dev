//
//  GamesData.swift
//  PokemonGames
//
//  Created by Mert Sevindik on 04.08.20.
//  Copyright © 2020 Mert Sevindik. All rights reserved.
//

import Foundation

struct GamesData: Decodable {
    let id: Int
    let main_region: MainRegion
    let pokemon_species: [PokemonSpecies]
}

struct  MainRegion: Decodable {
    let name: String
    let url: String
}

struct PokemonSpecies: Decodable {
    let name: String
}
