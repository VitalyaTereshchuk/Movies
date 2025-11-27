import Foundation

struct MockFavoriteStorage: FavoriteStorageProtocol {
    func load() -> Set<Int> {
        return [1054867]
    }
    
    func save(favoriteIDs: Set<Int>) { }
}
