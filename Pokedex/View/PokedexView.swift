//
//  PokedexView.swift
//  Pokedex
//
//  Created by mac on 3/26/25.
//

import SwiftUI

struct PokedexView: View {
    
    private let gridItems = [GridItem(.flexible()),
                             GridItem(.flexible())]
    
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 16,content: {
                    ForEach(viewModel.pokemon) { pokemon in
                        Pokemoncell(pokemon: pokemon, viewModel: viewModel)
                    }
                })
            }
            .navigationTitle("Pokedex")
        }
    }
}

#Preview {
    PokedexView()
}
