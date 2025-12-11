import SwiftUI

struct FilmsListScreen: View {
    let filmViewModel: FilmsViewModel
    let favoritesViewModel: FavoritesViewModel
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
            NavigationStack {
                contentForState
                .navigationTitle("Movies")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "text.badge.xmark")
                                .font(.system(size: 16))
                                .foregroundColor(.pink)
                        }
                    }
                }
            }
    }
}

extension FilmsListScreen {
    // MARK: - Films List Section
    @ViewBuilder
    private var contentForState: some View {
        switch filmViewModel.state {
        case .idle:
            Text("No Films yet")
        case .loading:
            ProgressView {
                Text("Loading...")
            }
        case .loaded(let films):
                FilmsListView(films: films,
                              favoritesViewModel: favoritesViewModel)
        case .error(let error):
            Text(error)
                .foregroundStyle(.pink)
        }
    }
}

#Preview {
    FilmsListScreen(filmViewModel: FilmsViewModel(service: MockService()), favoritesViewModel: FavoritesViewModel(service: MockFavoriteStorage()))
}
