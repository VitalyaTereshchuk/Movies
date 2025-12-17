import Foundation

struct MockFavoriteStorage: FavoriteStorageProtocol {
    func load() -> Set<String> {
        ["tt1312221"]
    }
    
    func save(favoriteIDs: Set<String>) { }
}
