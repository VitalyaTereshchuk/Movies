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
 
    var body: some View {
        HStack(spacing: 25) {
            ZStack(alignment: .topTrailing) {
                FilmImageView(urlPatch: film.primaryImage)
                    .frame(width: 100, height: 150)
                    .cornerRadius(10)
                
                ZStack(alignment: .center) {
                    Rectangle()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(.black.opacity(0.5))
                        
                    
                    Text("\(String(film.averageRating))")
                        .font(.system(size: 10))
                        .foregroundStyle(.yellow)
                }
            }
            
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text(film.primaryTitle)
                        .bold()
                    
                    Spacer()
                    
                    FavoriteButton(filmID: film.id, favoritesViewModel: favoritesViewModel)
                }
                .padding(.bottom, 5)
                
                Text("Filming locations: \(film.filmingLocations[0])")
                    .font(.caption)
                
                Text("Start year: \(String(film.startYear))")
                    .font(.caption)
            }
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

