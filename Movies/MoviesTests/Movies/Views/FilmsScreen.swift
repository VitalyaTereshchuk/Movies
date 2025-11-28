import SwiftUI

struct FilmsScreen: View {
    let filmViewModel: FilmsViewModel
    let favoritesViewModel: FavoritesViewModel
    
    var body: some View {
        NavigationStack {
            Group {
                switch filmViewModel.state {
                case .idle:
                    Text("No Films yet")
                case .loading:
                    ProgressView {
                        Text("Loading...")
                    }
                case .loaded(let films):
                    FilmsListView(films: films,
                                  favoritesViewModel: favoritesViewModel)
                    
                case .error(let error):
                    Text(error)
                        .foregroundStyle(.pink)
                }
            }
            .navigationTitle("Movies")
        }
        .task {
            await filmViewModel.fetchFilms()
        }
    }
}

#Preview {
    FilmsScreen(filmViewModel: FilmsViewModel(service: MockService()), favoritesViewModel: FavoritesViewModel(service: MockFavoriteStorage()))
}
