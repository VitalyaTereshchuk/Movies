import SwiftUI

struct FilmsListView: View {
    var films: [Film]
    let favoritesViewModel: FavoritesViewModel
    
    var body: some View {
        List(films) { film in
            NavigationLink(value: film) {
                FilmRow(film: film, favoritesViewModel: favoritesViewModel)
            }
        }
        .navigationDestination(for: Film.self) { film in
            FilmDetailScreen(film: film)
        }
    }
}

private struct FilmRow: View {
    let film: Film
    let favoritesViewModel: FavoritesViewModel
    
//    var isFavorite: Bool {
//        favoritesViewModel.isFavorite(filmID: film.id)
//    }
    
    var body: some View {
        HStack(spacing: 25) {
            FilmImageView(urlPatch: film.primaryImage)
                .frame(width: 100, height: 150)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text(film.primaryTitle)
                        .font(.title3)
                        .bold()
                    
                    Spacer()
                    
//                    FavoriteButton(filmID: film.id, favoritesViewModel: favoritesViewModel)
//                    buttonStyle(.plain)
//                    controlSize(.large)
                }
                .padding(.bottom, 5)
                
                Text("Directed by")
            }
        }
    }
}

#Preview {
    @State @Previewable var vm = FilmsViewModel(service: MockService())
    @State @Previewable var favorites = FavoritesViewModel(service: MockFavoriteStorage())
    
    FilmsListView(films: vm.films, favoritesViewModel: FavoritesViewModel(service: MockFavoriteStorage()))
    
        .task {
            await vm.fetchFilms()
            favorites.load()
        }
}

