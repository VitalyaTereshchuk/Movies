import Foundation

struct FilmCarousel: Codable, Identifiable, Equatable {
    let id: String
    let movieTitle: String
    let descriptionFilm: String
    let bannerImage: String
    let thumbnailsImage: [UrlFrameImage]
    let trailer: String
    let video: String?
    let filmingLocationsCountry: [String]?
    let startFilmYear: Int
    let releaseFilmDate: String
    let averageRatingFilm: Float?
}

struct UrlFrameImage: Codable, Equatable, Hashable {
    let url: String
    let width: Int
    let height: Int
}
