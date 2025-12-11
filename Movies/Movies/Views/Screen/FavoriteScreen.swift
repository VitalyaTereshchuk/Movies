import SwiftUI

struct FavoriteScreen: View {
    let filmsViewModel: FilmsViewModel
    let favoritesViewModel: FavoritesViewModel
    
    var films: [Film] {
        let favorite = favoritesViewModel.favoriteIDs
        switch filmsViewModel.state {
        case .loaded(let films):
            return films.filter { favorite.contains($0.id) }
        default: return []
        }
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
