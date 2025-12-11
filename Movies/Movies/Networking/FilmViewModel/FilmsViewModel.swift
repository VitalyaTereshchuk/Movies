import Foundation
import Observation

@Observable
class FilmsViewModel {
    
    enum State: Equatable {
        case idle
        case loading
        case loaded([Film])
        case error(String)
    }
    
    var state: State = .idle
    
    private let service: ServiceProtocol
    
    init(service: ServiceProtocol = DefaultService()) {
        self.service = service
    }
    
    func fetchFilms() async {
        guard state == .idle else { return }
        
        state = .loading
        
        do {
            let film = try await service.fetchFilms()
            self.state = .loaded(film)
        }
        catch let error as APIError {
            self.state = .error(error.errorDescription)
        }
        catch  {
            self.state = .error("unowned error")
        }
    }
    
    //MARK: Preview
    static var example: FilmsViewModel {
        let vm = FilmsViewModel(service: MockService())
        vm.state = .loaded([Film.example, Film.exampleFavorite])
        return vm
    }
}
