
import SwiftUI

struct BannerIndicatorView: View {
    var bannerFilms: [FilmCarousel]
    @Binding var currentIndex: Int
    
    var body: some View {
        HStack(spacing: 5) {
            ForEach(bannerFilms.indices, id: \.self) { index in
                Circle()
                    .fill(currentIndex == index ? .pink : .gray.opacity(0.5))
                    .frame(width: currentIndex == index ? 10 : 6, height: currentIndex == index ? 10 : 6)
            }
        } //END HSTACK
        .animation(.easeOut, value: currentIndex)
    }
}
