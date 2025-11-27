
import Foundation

protocol ServiceProtocol {
    func fetchFilms() async throws -> TrendingMoviesResponse
}
