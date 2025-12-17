
import Foundation

protocol Service {
    func fetchFilms() async throws -> TrendingMoviesResponse
}
