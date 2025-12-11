import Foundation

struct FilmCarousel: Codable, Identifiable, Equatable, Hashable {
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
    
    
    static var exampleBannerFilm: FilmCarousel {
        //    MockService.fetchBannerFilm()
        let bannerFilmURL = URL.convertAssetImage(named: "primaryBannerImage")
        
        return FilmCarousel(id: "id",
                             movieTitle: "Death on the Nile",
                             descriptionFilm: "Belgian sleuth Hercule Poirot's vacation aboard a glamorous river steamer turns into a terrifying search for a murderer when a picture-perfect couple's idyllic honeymoon is tragically cut short. Set against an epic landscape of sweeping Egyptian desert vistas and the majestic Giza pyramids, this tale of unbridled passion and incapacitating jealousy features a cosmopolitan group of impeccably dressed travelers, and enough wicked twists and turns to leave audiences guessing until the final, shocking denouement.",
                             bannerImage: bannerFilmURL?.absoluteString ?? "",
                             thumbnailsImage: [UrlFrameImage(url: "https://m.media-amazon.com/images/M/MV5BMmZmZDE0NjgtNGQ5Ny00MTA3LTk5YjctMDM3YTFlMDg4MzI3XkEyXkFqcGc@._V1_QL75_UX280_CR0,0,280,414_.jpg",
                                                             width: 280,
                                                             height: 414)],
                             trailer:  "https://www.youtube.com/watch?v=dZRqB0JLizw",
                             video: nil,
                             filmingLocationsCountry: ["Aswan, Egypt"],
                             startFilmYear: 2022,
                             releaseFilmDate: "2022-02-09",
                             averageRatingFilm: 6.3)
    }
}

struct UrlFrameImage: Codable, Equatable, Hashable {
    let url: String
    let width: Int
    let height: Int
}
