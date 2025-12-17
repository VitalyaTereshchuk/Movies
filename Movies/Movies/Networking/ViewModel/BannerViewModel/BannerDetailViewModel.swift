import Foundation
import Observation

@Observable
class BannerDetailViewModel {
    var state: LoadingState<FilmCarousel> = .idle
    
    let service: ServiceProtocol
    
    init(service: ServiceProtocol = DefaultService()) {
        self.service = service
    }
    
    func fetch(for film: FilmCarousel) async {
        guard !state.isLoading else { return }
        
        state = .loading
    }
}
