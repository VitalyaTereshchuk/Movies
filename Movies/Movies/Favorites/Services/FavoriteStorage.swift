import Foundation

protocol FavoriteStorageProtocol {
    func load() ->  Set<Int>
    func save(favoriteIDs: Set<Int>)
}
