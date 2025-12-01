import Foundation
import Observation

@Observable
class FavoritesViewModel {
    
   private(set) var favoriteIDs: Set<String> = []
    
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
    
    //MARK: Preview
    static var exampleFavorite: FavoritesViewModel {
        let vm = FavoritesViewModel(service: MockFavoriteStorage())
        vm.favoriteIDs = ["1", "2"]
        return vm
    }
}
