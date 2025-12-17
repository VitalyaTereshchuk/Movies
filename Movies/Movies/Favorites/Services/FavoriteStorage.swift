import Foundation

protocol FavoriteStorageProtocol {
    func load() ->  Set<String>
    func save(favoriteIDs: Set<String>)
}
