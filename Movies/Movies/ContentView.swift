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
            .badge(favoritesViewModel.favoritesCount > 0 ? favoritesViewModel.favoritesCount : 0)
           
            Tab("Settings", systemImage: "gear") {
                SettingsScreen()
            }
            
            Tab(role: .search) {
                SearchScreen(favoritesViewModel: favoritesViewModel)
            }
        }
        .task {
            favoritesViewModel.load()
        }
        .setAppearanceTheme()
    }
}

#Preview {
    ContentView()
}

