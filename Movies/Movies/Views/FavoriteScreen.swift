//
//  FavouritesScreen.swift
//  Movies
//
//  Created by Vitaly on 20.11.2025.
//

import SwiftUI

struct FavoriteScreen: View {
    let filmsViewModel: FilmsViewModel
    let favoritesViewModel: FavoritesViewModel
    
    var films: [Film] {
        let favorite = favoritesViewModel.favoriteIDs
        return filmsViewModel.films.filter { favorite.contains($0.id) }
    }
    
    var body: some View {
        NavigationStack {
            Group {
                if films.isEmpty {
                    ContentUnavailableView("No Favorite yet", systemImage: "heart")
                } else {
                    FilmsListView(films: films, favoritesViewModel: favoritesViewModel)
                }
            }
                    .navigationTitle("Favorites")
        }
    }
}

#Preview {
    FavoriteScreen(filmsViewModel: FilmsViewModel.example, favoritesViewModel: FavoritesViewModel.exampleFavorite)
}
