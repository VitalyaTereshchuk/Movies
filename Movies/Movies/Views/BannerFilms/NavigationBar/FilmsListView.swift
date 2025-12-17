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
        .scrollContentBackground(.hidden)
        .navigationDestination(for: Film.self) { film in
            FilmDetailScreen(film: film, favoritesViewModel: favoritesViewModel)
        }
    }
}


private struct FilmRow: View {
    let film: Film
    let favoritesViewModel: FavoritesViewModel
    
    var body: some View {
        HStack(
            alignment: .top,
            spacing: 25
        ) {
            ZStack(
                alignment: .topLeading
            ) {
                FilmImageView(urlPatch: film.primaryImage)
                    .frame(width: 100, height: 150)
                    .cornerRadius(10)
                
                AverageRating(film: film)
            }
            
            VStack(
                alignment: .leading,
                spacing: 10
            ) {
                HStack {
                    Text(film.primaryTitle)
                        .bold()
                    
                    Spacer()
                    
                    FavoriteButton(filmID: film.id,
                                   favoritesViewModel: favoritesViewModel)
                }
                .padding(.bottom, 5)
                
                Text("Filming locations: \(film.filmingLocations?.first ?? "Unknown")")
                    .font(.caption)
                
                Text("Start year: \(String(film.startYear))")
                    .font(.caption)
            }
            .padding(.top)
        }
    }
}

#Preview {
    @State @Previewable var favorites = FavoritesViewModel(service: MockFavoriteStorage())
    
    NavigationStack {
        FilmsListView(films: [Film.example, Film.exampleFavorite], favoritesViewModel: favorites)
    }
    .task {
        favorites.load()
    }
}

