import Foundation

struct TrendingMoviesResponse: Codable, Equatable, Hashable {
    let results: [Film]
}

struct Film: Codable, Identifiable, Equatable, Hashable {
    let id: Int
    let title: String
    let posterPath: String
    let backdropPath: String
    let description: String
    let releaseYear: String
    let originalTitle: String
    
    var filmPosterURL: URL? {
        URL(string: "https://image.tmdb.org/t/p/w500/\(posterPath)")
    }
    
    var filmBannerImageURL: URL? {
        URL(string: "https://image.tmdb.org/t/p/w500/\(backdropPath)")
    }
    
    enum CodingKeys: String, CodingKey {
        case id, title
        case originalTitle = "original_title"
        case description = "overview"
        case releaseYear = "release_date"
        case posterPath = "poster_path"
        case backdropPath = "backdrop_path"
    }
    
    //MARK: Preview
    static var example: Film {
        MockService().fetchFilm()
    }
}
