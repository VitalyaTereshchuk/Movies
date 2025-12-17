import Foundation
import Observation

@Observable
class FilmsViewModel {
    var state: LoadingState<[Film]> = .idle
    
    private let service: ServiceProtocol
    
    init(service: ServiceProtocol = DefaultService()) {
        self.service = service
    }
    
    func fetchFilms() async {
        guard !state.isLoading || state.error != nil else { return }
        
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
