
import SwiftUI

struct FilmDetailScreen: View {
    let film: Film
    let favoritesViewModel: FavoritesViewModel
    
    @State var viewModel = FilmDetailViewModel()
    
    var body: some View {
        ScrollView {
            VStack(
                spacing: 8
            ) {
                FilmImageView(urlPatch: film.thumbnails[1].url) //Заменить потом интекс на [0] при тесте
                    .frame(width: CGFloat(film.thumbnails[1].width),
                           height: CGFloat(film.thumbnails[1].height)) //Заменить потом интекс на [0] при тесте
                    .cornerRadius(10)
                    .containerRelativeFrame(.horizontal)
                
                VStack(
                    alignment: .leading
                ) {
                    Text(film.primaryTitle)
                        .font(.title3)
                        .fontWeight(.bold)

                    Divider()
                    
                    Text("Characters")
                        .font(.default)
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

#Preview {
    NavigationStack {
        FilmDetailScreen(film: Film.example, favoritesViewModel: FavoritesViewModel(service: MockFavoriteStorage()))
    }
}
