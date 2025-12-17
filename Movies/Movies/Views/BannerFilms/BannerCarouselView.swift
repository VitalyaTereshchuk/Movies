import SwiftUI

struct BannerCarouselView: View {
    var bannerFilms: [FilmCarousel]
    @Binding var currentIndex: Int
    @Binding var currentCardSize: CGSize
    @Binding var movieDeatil: FilmCarousel?
    @Binding var showMovieDetail: Bool
    
    var animation: Namespace.ID 
    
    var body: some View {
        SnapCarousel(spacing: 20,
                     trialingSpace: 110,
                     index: $currentIndex,
                     items: bannerFilms) { movie in
            GeometryReader { proxy in
                let size = proxy.size
                
                FilmImageView(urlPatch: movie.bannerImage)
                    .frame(width: size.width, height: size.height)
                    .cornerRadius(15)
                    .matchedGeometryEffect(id: movie.id, in: animation)
                    .onTapGesture {
                        currentCardSize = size
                        movieDeatil = movie
                        withAnimation(.easeInOut) {
                            showMovieDetail = true
                        }
                    }
            }
        }
    }
}
