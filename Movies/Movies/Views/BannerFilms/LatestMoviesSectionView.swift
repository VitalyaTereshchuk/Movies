import SwiftUI

struct LatestMoviesSectionView: View {
    var bannerFilms: [FilmCarousel]
    
    var body: some View {
        HStack {
            Text("Latest Movies")
                .font(.system(size: 16, weight: .bold))
            
            Spacer()
            
            Button {
                
            } label: {
                Text("See All")
                Image(systemName: "arrow.right")
            }
            .font(.system(size: 16, weight: .semibold))
            .foregroundStyle(Color(.pink.opacity(0.8)))
        } // END POPULAR SECTION TITLE
        .padding(.leading)
        .padding(.trailing)
        
        // MARK: POPULAR MOVIE LIST
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                ForEach(bannerFilms) { movie in
                    FilmImageView(urlPatch: movie.bannerImage)
                        .frame(width: 100, height: 120)
                        .cornerRadius(15)
                }
            } // END HSTACK
            .padding(.leading)
        } // END SCROLL VIEW
    }
}
