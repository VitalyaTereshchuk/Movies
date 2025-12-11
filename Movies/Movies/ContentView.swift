
import SwiftUI

struct ContentView: View {
    @State private var filmBannerViewModel = BannerViewModel()
    @State private var filmsViewModel = FilmsViewModel()
    @State private var favoritesViewModel = FavoritesViewModel()
    
    var body: some View {
        TabView {
            Tab("Movies", systemImage: "movieclapper") {
                FilmsScreen(filmBannerViewModel: filmBannerViewModel,
                            filmViewModel: filmsViewModel,
                            favoritesViewModel: favoritesViewModel)
            }
            
            Tab("Favourites", systemImage: "heart") {
                FavoriteScreen(filmsViewModel: filmsViewModel,
                               favoritesViewModel: favoritesViewModel)
            }
            
            Tab("Settings", systemImage: "gear") {
                SettingsScreen()
            }
            
            Tab(role: .search) {
                SearchScreen()
            }
        }
        .task {
            favoritesViewModel.load()
        }
    }
}

#Preview {
    ContentView()
}

