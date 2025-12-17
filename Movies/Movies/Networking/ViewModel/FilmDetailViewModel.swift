import Foundation
import Observation

@Observable
class FilmDetailViewModel {
    var state: LoadingState<[Film]> = .idle
    
    let service: ServiceProtocol
    
    init(service: ServiceProtocol = DefaultService()) {
        self.service = service
    }
    
    func fetch(for film: Film) async {
        guard !state.isLoading else { return }
        
        state = .loading
    }
}
