
import SwiftUI

struct FilmDetailScreen: View {
    let film: Film
    
    @State var viewModel = FilmDetailViewModel()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 8) {
                FilmImageView(urlPatch: film.backdropPath)
                    .frame(height: 230)
                
                
                VStack(alignment: .leading) {
                    Text(film.title)
                    
                    Divider()
                    
                    Text("Characters")
                        .font(.title3)
                }
                .padding()
            }
        }
        .task(id: film.id) {
            await viewModel.fetch(for: film)
        }
    }
}

#Preview {
    FilmDetailScreen(film: Film.example)
}
