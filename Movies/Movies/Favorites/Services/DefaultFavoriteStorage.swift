import Foundation

struct DefaultFavoriteStorage: FavoriteStorageProtocol {
    private let favoriteKey = "MoviesExplorer.FavoritesFilms"
    
    func load() -> Set<String> {
        let array = UserDefaults.standard.stringArray(forKey: favoriteKey) ?? []
        return Set(array)
    }
    
    func save(favoriteIDs: Set<String>) {
        UserDefaults.standard.set(Array(favoriteIDs), forKey: favoriteKey)
    }
}
