import Foundation

nonisolated
struct Film: Codable, Identifiable, Equatable, Hashable {
    let id: String
    
    let primaryTitle: String
    let description: String
    let primaryImage: String
    let thumbnails: [Url]
    let filmingLocations: [String]
    let startYear: Int
    let averageRating: Double
    let releaseDate: String
    
    
    @MainActor
    //MARK: - Preview
    static var example: Film {
        //MockService.fetchFilm()
        let bannerURL = URL.convertAssetImage(named: "primaryImage")
        
        return Film(id: "id",
                    primaryTitle: "Frankenstein",
                    description: "Dr. Victor Frankenstein, a brilliant but egotistical scientist, brings a creature to life in a monstrous experiment that ultimately leads to the undoing of both the creator and his tragic creation.",
                    primaryImage: bannerURL?.absoluteString ?? "",
                    thumbnails: [Url(url: "https://m.media-amazon.com/images/M/MV5BYzYzNDYxMTQtMTU4OS00MTdlLThhMTQtZjI4NGJmMTZmNmRiXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                                     width: 280,
                                     height: 414)
                    ],
                    filmingLocations: [ "North Bay, Nipissing, Ontario, Canada"],
                    startYear: 2025,
                    averageRating: 7.5,
                    releaseDate: "2025-11-07")
    }
    
    @MainActor
    static var exampleFavorite: Film {
        //MockService.fetchFilm()
        let bannerURL = URL.convertAssetImage(named: "primaryImage")
        
        return Film(id: "tt1312221",
                    primaryTitle: "Frankenstein",
                    description: "Dr. Victor Frankenstein, a brilliant but egotistical scientist, brings a creature to life in a monstrous experiment that ultimately leads to the undoing of both the creator and his tragic creation.",
                    primaryImage: bannerURL?.absoluteString ?? "",
                    thumbnails: [Url(url: "https://m.media-amazon.com/images/M/MV5BYzYzNDYxMTQtMTU4OS00MTdlLThhMTQtZjI4NGJmMTZmNmRiXkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                                     width: 280,
                                     height: 414)
                    ],
                    filmingLocations: [ "North Bay, Nipissing, Ontario, Canada"],
                    startYear: 2025,
                    averageRating: 7.5,
                    releaseDate: "2025-11-07")
    }
}

nonisolated
struct Url: Codable, Equatable, Hashable {
    let url: String
    let width: Int
    let height: Int
}

//struct TrendingMoviesResponse: Codable {
//    let results: [Film]
//}
//
//struct Film: Codable, Identifiable, Equatable, Hashable {
//    let id: Int
//    let title: String
//    let posterPath: String
//    let backdropPath: String
//    let description: String
//    let releaseYear: String
//    let originalTitle: String
//    
//    var filmPosterURL: URL? {
//        URL(string: "https://image.tmdb.org/t/p/w500/\(posterPath)")
//    }
//    
//    var filmBannerImageURL: URL? {
//        URL(string: "https://image.tmdb.org/t/p/w500/\(backdropPath)")
//    }
//    
//    enum CodingKeys: String, CodingKey {
//        case id, title
//        case originalTitle = "original_title"
//        case description = "overview"
//        case releaseYear = "release_date"
//        case posterPath = "poster_path"
//        case backdropPath = "backdrop_path"
//    }
//    
//    //MARK: Preview
//    static var example: Film {
//        MockService().fetchFilm()
//    }
//}
