import Foundation
import Observation

@Observable
class SearchTrailerYoutubeFilmViewModel {
    
    var state: LoadingState<YoutubeSearchResponse> = .idle
    
    private var service: ServiceProtocol
    
    init(service: ServiceProtocol = DefaultService()) {
        self.service = service
    }
    
    func fetchTrailerFilm(for title: String) async {
        guard !title.isEmpty else {
            state = .idle
            return
        }
        
        state = .loading
        
        do {
            let filmTrailer = try await service.getMoviesTrailer(for: title)
            self.state = .loaded(filmTrailer)
        }
        catch let error as APIError {
            self.state = .error(error.errorDescription)
        }
        catch {
            self.state = .error("unowned error")
        }
    }
}
