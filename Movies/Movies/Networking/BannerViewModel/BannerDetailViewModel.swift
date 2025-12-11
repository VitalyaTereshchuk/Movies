import Foundation
import Observation

@Observable
class BannerDetailViewModel {
    enum State: Equatable {
        case idle
        case loading
        case loaded(FilmCarousel)
        case error(String)
    }
    
    var state: State = .idle
    
    let service: ServiceProtocol
    
    init(service: ServiceProtocol = DefaultService()) {
        self.service = service
    }
    
    func fetch(for film: FilmCarousel) async {
        guard state != .loading else { return }
        
        state = .loading
    }
}
