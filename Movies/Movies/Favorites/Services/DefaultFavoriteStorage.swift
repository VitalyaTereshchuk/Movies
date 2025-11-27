import Foundation

struct DefaultFavoriteStorage: FavoriteStorageProtocol {
    private let favoriteKey = "MoviesExplorer.FavoritesFilms"
    
    func load() -> Set<Int> {
        let array = UserDefaults.standard.stringArray(forKey: favoriteKey) as? [Int] ?? []
        return Set(array)
    }
    
    func save(favoriteIDs: Set<Int>) {
        UserDefaults.standard.set(favoriteIDs, forKey: favoriteKey)
    }
}

