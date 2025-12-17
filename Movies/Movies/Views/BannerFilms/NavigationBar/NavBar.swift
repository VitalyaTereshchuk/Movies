import SwiftUI

struct NavBar: View {
    let filmViewModel: FilmsViewModel
    let favoritesViewModel: FavoritesViewModel
    
    @State var highlightCircle: Bool = true
    @State private var showSheet = false
    @FocusState var isFocused: Bool
    @State private var isHighlighted: Bool = true
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image("logoImage")
                    .resizable()
                    .frame(width: 54, height: 54)
                    .scaledToFill()
            }
            
            Spacer()
            
            AnimatedCircleButtonListMovies(isHighlighted: $isHighlighted, isFocused: $isFocused , showSheet: $showSheet, highlightCircle: $highlightCircle)
                .clipShape(.circle)
                .fullScreenSheet(isPresented: $showSheet) {
                    FilmsListScreen(filmViewModel: filmViewModel, favoritesViewModel: favoritesViewModel) //Films List
                } background: {
                    ConcentricRectangle()
                        .fill(.ultraThinMaterial)
                }
        }
        .padding()
    }
}

extension NavBar {
    
}

#Preview {
    NavBar(filmViewModel: FilmsViewModel(service: MockService()), favoritesViewModel: FavoritesViewModel(service: MockFavoriteStorage()))
}
