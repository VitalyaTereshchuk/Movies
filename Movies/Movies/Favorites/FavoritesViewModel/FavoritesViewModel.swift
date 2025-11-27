import Foundation
import Observation

@Observable
class FavoritesViewModel {
    
   private(set) var favoriteIDs: Set<String> = []
    
    private let favoriteKey = "MoviesExplorer.FavoritesFilms"
    
    func load() {
        let array = UserDefaults.standard.stringArray(forKey: favoriteKey) ?? []
        favoriteIDs = Set(array)
    }
    
    func save() {
        UserDefaults.standard.set(favoriteIDs, forKey: favoriteKey)
    }
    
    func toggleFavorite(filmID: String) {
        if favoriteIDs.contains(filmID) {
            favoriteIDs.remove(filmID)
        } else {
            favoriteIDs.insert(filmID)
        }
        
        save()
    }
    
    func isFavorite(filmID: String) -> Bool {
        favoriteIDs.contains(filmID)
    }
}
