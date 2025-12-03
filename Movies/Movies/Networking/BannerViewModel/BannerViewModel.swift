import Foundation
import Observation

@Observable
class BannerViewModel {
    
    enum State: Equatable {
        case idle
        case loading
        case loaded([FilmCarousel])
        case error(String)
    }
    
    var state: State = .idle
    
    private let service: ServiceProtocol
    init(service: ServiceProtocol) {
        self.service = service
    }
    
    func fetchBannerFilms() async {
        guard state == .idle else { return }
        
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
