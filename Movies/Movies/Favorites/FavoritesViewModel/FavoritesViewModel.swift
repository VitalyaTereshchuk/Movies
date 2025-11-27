import Foundation
import Observation

@Observable
class FavoritesViewModel {
    
   private(set) var favoriteIDs: Set<Int> = []
    
    let service: FavoriteStorageProtocol
    
    init(service: FavoriteStorageProtocol = DefaultFavoriteStorage()) {
        self.service = service
    }
    
    func load() {
        favoriteIDs = service.load()
    }
    
    func save() {
        service.save(favoriteIDs: favoriteIDs)
    }
    
    func toggleFavorite(filmID: Int) {
        if favoriteIDs.contains(filmID) {
            favoriteIDs.remove(filmID)
        } else {
            favoriteIDs.insert(filmID)
        }
        
        save()
    }
    
    func isFavorite(filmID: Int) -> Bool {
        favoriteIDs.contains(filmID)
    }
}
