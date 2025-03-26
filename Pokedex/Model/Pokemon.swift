//
//  Pokemon.swift
//  Pokedex
//
//  Created by mac on 3/26/25.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}



let MOCK_POKEMON: [Pokemon] = [
    .init(id: 0, name: "Charmander", imageUrl: "1", type: "fire"),
    .init(id: 1, name: "Squirtle", imageUrl: "1", type: "water"),
    .init(id: 2, name: "Pikachu", imageUrl: "1", type: "electric"),
    .init(id: 3, name: "Eevee", imageUrl: "1", type: "normal"),
    .init(id: 4, name: "Jigglypuff", imageUrl: "1", type: "fairy"),
    .init(id: 5, name: "Snorlax", imageUrl: "1", type: "normal"),
    .init(id: 6, name: "Meowth", imageUrl: "1", type: "normal"),
    .init(id: 7, name: "Machop", imageUrl: "1", type: "fighting"),
    .init(id: 8, name: "Bulbasaur", imageUrl: "1", type: "poison"),
    .init(id: 9, name: "Psyduck", imageUrl: "1", type: "psychic")
]
