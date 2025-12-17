import SwiftUI

struct FilmsScreen: View {
    let filmBannerViewModel: BannerViewModel
    let filmViewModel: FilmsViewModel
    let favoritesViewModel: FavoritesViewModel
    
    @State private var bannerHeight: CGFloat?
    @State private var showSheet = false
    
    @Namespace var animation
    
    var body: some View {
        NavigationStack {
                bannerScreen   //Banner Films
        }
        .task {
            await filmBannerViewModel.fetchBannerFilms()
            await filmViewModel.fetchFilms()
        }
    }
}

extension FilmsScreen {
    
    //MARK: Banner screen
    @ViewBuilder
    private var bannerScreen: some View {
        switch filmBannerViewModel.state {
        case .idle:
            EmptyView()
        case .loading:
            ProgressView()
        case .loaded(let films):
            BannerFilms(bannerFilms: films, filmViewModel: filmViewModel, favoritesViewModel: favoritesViewModel, animation: animation)
                
        case .error(let error):
            Text(error)
                .foregroundStyle(.pink)
        }
    }
}

#Preview {
    FilmsScreen(filmBannerViewModel: BannerViewModel(service: MockService()),
                filmViewModel: FilmsViewModel(service: MockService()),
                favoritesViewModel: FavoritesViewModel(service: MockFavoriteStorage()))
}
