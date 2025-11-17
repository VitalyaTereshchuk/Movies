import Foundation

struct TrendingMoviesResponse: Codable, Equatable {
    let results: [Film]
}

struct Film: Codable, Identifiable, Equatable {
    let id: Int
    let title: String
    let posterPath: String
    let description: String
    let releaseYear: String
    let originalTitle: String
    
    enum CodingKeys: String, CodingKey {
        case id, title
        case originalTitle = "original_title"
        case description = "overview"
        case releaseYear = "release_date"
        case posterPath = "poster_path"
    }
}
