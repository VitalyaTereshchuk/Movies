import Foundation
import Observation

@Observable
class SearchFilmViewModel {
    var state: LoadingState<[Film]> = .idle
    
    private var lastSearchTerm: String = ""
    
    private let service: ServiceProtocol
    
    init(service: ServiceProtocol = DefaultService()) {
        self.service = service
    }
    
    func fetchFilms(for searchTerm: String) async {
        self.lastSearchTerm = searchTerm
        
        guard !searchTerm.isEmpty else {
            state = .idle
            return
        }
        
        state = .loading
        
        do {
            let film = try await service.searchFilms(for: searchTerm)
            self.state = .loaded(film)
        }
        catch let error as APIError {
            self.state = .error(error.errorDescription)
        }
        catch  {
            self.state = .error("unowned error")
        }
    }
}
