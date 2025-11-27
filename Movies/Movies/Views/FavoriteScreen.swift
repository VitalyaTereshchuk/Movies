//
//  FavouritesScreen.swift
//  Movies
//
//  Created by Vitaly on 20.11.2025.
//

import SwiftUI

struct FavoriteScreen: View {
    let filmsViewModel: FilmsViewModel
    
    var films: [Film] {
        //TODO:
        //Get favourites
        //retrieve ids from storage
        //get data for favourites ids from film data
        
        return []
    }
    
    var body: some View {
        NavigationStack {
            Group {
                if films.isEmpty {
                    ContentUnavailableView("No Favourites yet", systemImage: "heart")
                } else {
                    FilmsListView(films: films)
                }
            }
                    .navigationTitle("Favourites")
        }
    }
}

#Preview {
    FavoriteScreen(filmsViewModel: FilmsViewModel(service: MockService()))
}
