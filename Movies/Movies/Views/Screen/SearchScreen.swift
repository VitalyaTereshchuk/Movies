import SwiftUI

struct SearchScreen: View {
    @State private var text: String = ""
    @State private var searchFilmViewModel: SearchFilmViewModel
    let favoritesViewModel: FavoritesViewModel
    
    init(favoritesViewModel: FavoritesViewModel,
         service: ServiceProtocol = DefaultService()) {
        self.favoritesViewModel = favoritesViewModel
        self.searchFilmViewModel = SearchFilmViewModel(service: service)
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                switch searchFilmViewModel.state {
                case .idle:
                    Text("Search screen")
                case .loading:
                    ProgressView()
                case .loaded(let films):
                    FilmsListView(films: films, favoritesViewModel: favoritesViewModel)
                case .error(let error):
                    Text(error)
                }
            }
            .navigationTitle("Search Movies")
            .searchable(text: $text)
            .task(id: text) {
                //fetch for text
                await searchFilmViewModel.fetchFilms(for: text)
            }
        }
    }
}

#Preview {
    SearchScreen(favoritesViewModel: FavoritesViewModel(service: MockFavoriteStorage()))
}
