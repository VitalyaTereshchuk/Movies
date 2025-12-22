
import SwiftUI

struct BannerFilmDetailScreen: View {
    var movie: FilmCarousel
    
    @Binding var showMovieDetail: Bool
    @Binding var movieDetail: FilmCarousel?
    @Binding var currentCardSize: CGSize
    
    var animation: Namespace.ID
    
    @State var trailerViewModel = SearchTrailerYoutubeFilmViewModel()
    @State var showDetailContent: Bool = false
    @State var offset: CGFloat = 0
    @State var showTrailer: Bool = false
    @State private var showSheet: Bool = false
    
    var body: some View {
        //MARK: MOVIE DETAIL
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HStack {
                    Spacer()
                    Button {
                        withAnimation {
                            showMovieDetail = false
                        }
                    } label: {
                        Image(systemName: "xmark.circle")
                            .font(.title2)
                            .foregroundColor(.pink)
                    } // END DRAWER MENU
                }
                
                
                FilmImageView(urlPatch: movie.bannerImage)
                    .frame(width: currentCardSize.width, height: currentCardSize.height)
                    .cornerRadius(15)
                    .matchedGeometryEffect(id: movie.id, in: animation)
                // MARK: - MOVIE DETAILS
                VStack(spacing: 15) {
                    
                    Text(movie.movieTitle)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .padding(.top, 25)
                    
                    
                    Text("Storyline")
                        .font(.title)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .padding(.top, 25)
                    
                    Text(movie.descriptionFilm)
                        .multilineTextAlignment(.leading)
                    
                    ButtonShowTrailer(showSheet: $showSheet)
                        .fullScreenSheet(isPresented: $showSheet,
                                         content: {
                            TrailerYoutubeScreen(movieTitle: movie.movieTitle,
                                                 trailerViewModel: $trailerViewModel,
                                                 movieDetail: $movieDetail)
                        }, background: {
                            ConcentricRectangle()
                                .fill(.ultraThinMaterial)
                        })
                    .padding(.top, 20)
                } // END DETAILS VSTACK
                .opacity(showDetailContent ? 1 : 0)
                .offset(y: showDetailContent ? 0 : 200)
            } //END VSTACK
            .padding()
            .modifier(OffsetModifier(offset: $offset))
        } //END SCROLL VIEW
        .coordinateSpace(name: "SCROLL")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Rectangle()
                .fill(.ultraThinMaterial)
                .ignoresSafeArea()
        }
        .onAppear {
            withAnimation(.easeInOut) {
                showDetailContent = true
            }
        }
        .onChange(of: offset) { _, newValue in
            if newValue > 120 {
                withAnimation(.easeInOut) {
                    showDetailContent = false
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
                    withAnimation(.easeInOut) {
                        showMovieDetail = false
                    }
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
