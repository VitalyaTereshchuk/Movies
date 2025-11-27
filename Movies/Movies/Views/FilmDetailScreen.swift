
import SwiftUI

struct FilmDetailScreen: View {
    let film: Film
    
    @State var viewModel = FilmDetailViewModel()
    
    var body: some View {
        ScrollView {
            VStack( spacing: 8) {
                FilmImageView(urlPatch: film.primaryImage)
                    .frame(height: 300)
                    .containerRelativeFrame(.horizontal)
                
                VStack(alignment: .leading) {
                    Text(film.primaryTitle)
                        .font(.title3)
                        .fontWeight(.bold)
                        
                        
                    
                    Divider()
                    
                    Text("Characters")
                        .font(.default)
                }
                .padding()
            }
        }
        .task(id: String(film.id)) {
            await viewModel.fetch(for: film)
        }
    }
}

//#Preview {
//    FilmDetailScreen(film: Film.example)
//}
