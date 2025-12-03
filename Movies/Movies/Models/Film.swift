import Foundation

struct Film: Codable, Identifiable, Equatable, Hashable {
    let id: String
    let primaryTitle: String
    let description: String
    let primaryImage: String
    let thumbnails: [Url]
    let filmingLocations: [String]?
    let startYear: Int
    let averageRating: Float?
    let releaseDate: String
    
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

struct Url: Codable, Equatable, Hashable {
    let url: String
    let width: Int
    let height: Int
}

