
import SwiftUI

struct BannerFilms: View {
    var bannerFilms: [FilmCarousel]
    let filmViewModel: FilmsViewModel
    let favoritesViewModel: FavoritesViewModel
    
    @State var currentCardSize: CGSize = .zero
    @State var movieDetail: FilmCarousel?
    @State var showMovieDetail: Bool = false
    @State var showDetailContent: Bool = false
    
    @State var currentIndex: Int = 0//ANIMATED view
    var animation: Namespace.ID
    
    @Environment(\.colorScheme) var scheme
    
    var body: some View {
        ZStack {
            //MARK: Background banner
            BackgroundBannerView(bannerFilms: bannerFilms,
                                 currentIndex: $currentIndex,
                                 scheme: _scheme)
            .frame(maxWidth: .infinity)
            .ignoresSafeArea()
            
            VStack() {
                //MARK: Navigation bar
                NavBar(filmViewModel: filmViewModel, favoritesViewModel: favoritesViewModel)
                
                //MARK:  Snap CAROUSEL
                BannerCarouselView(bannerFilms: bannerFilms,
                                   currentIndex: $currentIndex,
                                   currentCardSize: $currentCardSize,
                                   movieDeatil: $movieDetail,
                                   showMovieDetail: $showMovieDetail,
                                   animation: animation)
                .padding(.top, 70)
                
                //MARK: Slider Indicator
                BannerIndicatorView(bannerFilms: bannerFilms, currentIndex: $currentIndex)
                    .padding(.bottom)
                
                //MARK: Letest movies
                LatestMoviesSectionView(bannerFilms: bannerFilms)
                    .padding(.bottom, 15)
            }
        }
        .overlay {
            if let movie = movieDetail, showMovieDetail {
                BannerFilmDetailScreen(movie: movie, showMovieDetail: $showMovieDetail, movieDetail: $movieDetail, currentCardSize: $currentCardSize, animation: animation)
            }
        }
    }
}


//
//#Preview {
//    @State @Previewable var banner = BannerViewModel(service: MockService())
//
//    NavigationStack {
//        BannerFilms(bannerFilms: [FilmCarousel.exampleBannerFilm], filmViewModel: Film.example, favoritesViewModel: Film.exampleFavorite)
//    }
//    .task {
//        await banner.fetchBannerFilms()
//    }
//}
