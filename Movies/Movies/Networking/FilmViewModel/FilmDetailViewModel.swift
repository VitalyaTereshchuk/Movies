import Foundation
import Observation

@Observable
class FilmDetailViewModel {
    enum State: Equatable {
        case idle
        case loading
        case loaded(Film)
        case error(String)
    }
    
    var state: State = .idle
    
    let service: ServiceProtocol
    
    init(service: ServiceProtocol = DefaultService()) {
        self.service = service
    }
    
    func fetch(for film: Film) async {
        guard state != .loading else { return }
        
        state = .loading
    }
}
