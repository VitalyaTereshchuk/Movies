
import Foundation

protocol ServiceProtocol {
    func fetchFilms() async throws -> [Film]
}
