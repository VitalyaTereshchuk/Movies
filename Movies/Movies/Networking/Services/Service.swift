
import Foundation

protocol ServiceProtocol {
    func fetchFilms() async throws -> [Film]
    func fetchBannerFilms() async throws -> [FilmCarousel]
}
