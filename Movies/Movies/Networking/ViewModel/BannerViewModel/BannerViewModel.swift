import Foundation
import Observation

@Observable
class BannerViewModel {
    var state: LoadingState<[FilmCarousel]> = .idle
    
    private let service: ServiceProtocol
    init(service: ServiceProtocol = DefaultService()) {
        self.service = service
    }
    
    func fetchBannerFilms() async {
        guard !state.isLoading || state.error != nil else { return }
        
        state = .loading
        
        do {
            let film = try await service.fetchBannerFilms()
            self.state = .loaded(film)
        }
        catch let error as APIError {
            self.state = .error(error.errorDescription ?? "unowned error")
        }
        catch {
            self.state = .error("unowned error")
        }
    }
    
//    //MARK: Preview
//    static var example: BannerViewModel {
//        let vm = BannerViewModel(service: MockService())
//        vm.state = .loaded(FilmCarousel)
//    }
}
