import SwiftUI

struct TrailerYoutubeScreen: View {
    let movieTitle: String
    @Binding var trailerViewModel: SearchTrailerYoutubeFilmViewModel
    @Binding var movieDetail: FilmCarousel?
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    trailerVideo
                        .padding(.top, 15)
                    
                    Text("Storyline")
                        .font(.title)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .padding(.top, 25)
                    
                    Text(movieDetail?.descriptionFilm ?? "")
                        .multilineTextAlignment(.leading)
                        .padding(.top, 15)
                        .padding(.horizontal, 8)
                }
                .navigationTitle(movieTitle)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "text.badge.xmark")
                            .font(.system(size: 16))
                            .foregroundColor(.pink)
                    }
                }
                .task {
                    await trailerViewModel.fetchTrailerFilm(for: movieTitle)
                }
            }
        }
    }
}

extension TrailerYoutubeScreen {
    @ViewBuilder
    private var trailerVideo: some View {
        switch trailerViewModel.state {
        case .idle, .loading:
            ZStack {
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .frame(height: 300)
                    .cornerRadius(10)
                    .padding(.horizontal, 8)
                
                ProgressView()
                    .progressViewStyle(.circular)
            }
        case .loaded(let film):
            TrailerScreen(urlPatch: film.items.first?.id.videoId ?? "")
        case .error(let error):
            Text(error)
                .foregroundStyle(.red)
        }
    }
}

//#Preview {
//    TrailerYoutubeScreen(movieTitle: <#String#>, trailerViewModel: <#SearchTrailerYoutubeFilmViewModel#>)
//}
