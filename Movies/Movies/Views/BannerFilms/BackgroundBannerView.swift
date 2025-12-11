import SwiftUI

struct BackgroundBannerView: View {
    var bannerFilms: [FilmCarousel]
    @Binding var currentIndex: Int
    
    @Environment(\.colorScheme) var scheme
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(bannerFilms.indices, id: \.self) { index in
                FilmImageView(urlPatch: bannerFilms[index].bannerImage)
                    .tag(index)
                    .clipped()
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .overlay(gradientOverlay)
        .overlay(Rectangle().fill(.ultraThinMaterial))
        .clipped()
    }
}

extension BackgroundBannerView {
    //MARK: - CUSTOM GRADIENT
    private var gradientOverlay: some View {
        let color: Color = (scheme == .dark ? .black : .white)
        
        return LinearGradient(
            colors: [
                .black,
                .clear,
                color.opacity(0.15),
                color.opacity(0.5),
                color.opacity(0.8),
                color
            ],
            startPoint: .top,
            endPoint: .bottom
        )
    }
}
