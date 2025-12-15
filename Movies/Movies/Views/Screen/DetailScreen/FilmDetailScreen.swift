
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
                FilmImageView(urlPatch: film.thumbnails[1].url) //При тесте mockdata заменить интекс на [0]
                    .frame(width: CGFloat(film.thumbnails[1].width),
                           height: CGFloat(film.thumbnails[1].height)) //При тесте mockdata заменить интекс на [0]
                    .cornerRadius(10)
                    .containerRelativeFrame(.horizontal)
                
                VStack(
                    alignment: .leading
                ) {
                    Text(film.primaryTitle)
                        .font(.title3)
                        .fontWeight(.bold)
                   
                    Divider()
                    
                    Text("Descriptions")
                        .font(.default)
                        .bold()
                    
                    Text(film.description)
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
