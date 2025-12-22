import Foundation

struct YoutubeSearchResponse: Codable, Equatable {
    let items: [VideoElement]
}

struct VideoElement: Codable, Equatable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable, Equatable {
    let kind: String
    let videoId: String
}

//For detail scree TitlePreviewTrailerView
struct TitlePreview: Codable, Equatable {
    let title: String
    let youtubeView: VideoElement
    let titleOverview: String
}
