
import SwiftUI

struct FilmDetailScreen: View {
    let film: Film
    let favoritesViewModel: FavoritesViewModel
    
    @State var viewModel = FilmDetailViewModel()
    
    var body: some View {
        ScrollView {
            VStack(
                alignment: .leading, spacing: 8
            ) {
                FilmImageView(urlPatch: film.primaryImage)
                    .frame(width: .infinity, height: .infinity)
                        .cornerRadius(10)
                        .containerRelativeFrame(.horizontal)
                VStack {
                    Text(film.primaryTitle)
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.top, 20)
                        .padding(.bottom, 30)
                    
                    VStack(
                        alignment: .leading
                    ) {
                        Group {
                            InfoRow(label: "Genres:", value: film.genres?.joined(separator: ", ") ?? "Unknown")
                            InfoRow(label: "Rating:", value: film.contentRating ?? "-")
                            InfoRow(label: "Locations:", value: String(film.filmingLocations?.joined(separator: ", ") ?? "Unknown"))
                            InfoRow(label: "Release data: ", value: film.releaseDate)
                        }
                        
                        Divider()
                        
                        Text("Descriptions")
                            .font(.default)
                            .bold()
                        
                        Text(film.description)
                    }
                }
                .padding()
            }
        }
        .toolbar {
            FavoriteButton(filmID: film.id,
                           favoritesViewModel: favoritesViewModel)
        }
        .task(id: String(film.id)) {
            await viewModel.fetch(for: film)
        }
    }
}

fileprivate struct InfoRow: View {
    let label: String
    let value: String
    
    var body: some View {
        GridRow {
            Text(label)
                .font(.subheadline)
                .fontWeight(.bold)
                .frame(width: 100, alignment: .leading)
            
            Text(value)
                .font(.subheadline)
        }
    }
}

#Preview {
    NavigationStack {
        FilmDetailScreen(film: Film.example, favoritesViewModel: FavoritesViewModel(service: MockFavoriteStorage()))
    }
}
