import SwiftUI

struct FilmsListView: View {
   
    var filmViewModel: FilmsViewModel
    
    var body: some View {
        NavigationStack {
            switch filmViewModel.state {
            case .idle:
                Text("No Films yet")
            case .loading:
                ProgressView {
                    Text("Loading...")
                }
            case .loaded(let films):
                List(films) { film in
                    HStack(spacing: 25) {
                        FilmImageView(urlPatch: film.posterPath)
                            .frame(width: 100, height: 150)
                            .cornerRadius(10)
                        
                        NavigationLink(value: film) {
                            Text(film.title)
                        }
                    }
                }
                .navigationDestination(for: Film.self) { film in
                    FilmDetailScreen(film: film)
                }
                
            case .error(let error):
                Text(error)
                    .foregroundStyle(.pink)
            }
        }
        .task {
             await filmViewModel.fetchFilms()
        }
    }
}

#Preview {
    @State @Previewable var vm = FilmsViewModel(service: DefaultService())
    FilmsListView(filmViewModel: vm)
}
