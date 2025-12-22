
import Foundation

protocol ServiceProtocol {
    func fetchFilms() async throws -> [Film]
    func fetchBannerFilms() async throws -> [FilmCarousel]
    func searchFilms(for searchTerm: String) async throws -> [Film]
    func getMoviesTrailer(for query: String) async throws -> YoutubeSearchResponse
}
