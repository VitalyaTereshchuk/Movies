import Foundation

struct Constants {
   static let APIKey = "AIzaSyAiHB3eR8lklb5amMc-mOYRb_r9_OPwN3M"
   static let youtubeBaseURL = "https://youtube.googleapis.com/youtube/v3/search"
}


struct DefaultService: ServiceProtocol {
    private func fetch<T: Decodable>(for URLString: String, type: T.Type) async throws -> T {
        guard  let url = URL(string: URLString) else {
            throw APIError.invalidURL
        }
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            
            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode) else {
                throw APIError.invalidResponse
            }
            
            return try JSONDecoder().decode(type, from: data)
        }
        catch let error as DecodingError {
            throw APIError.decoding(error)
        }
        catch let error as URLError {
            throw APIError.networkError(error)
        }
    }
    
    func fetchFilms() async throws -> [Film] {
        let url = "http://localhost:8080/movies"
        return try await fetch(for: url, type: [Film].self)
    }
    
    func searchFilms(for searchTerm: String) async throws -> [Film] {
        let allFilms = try await fetchFilms() //dont have a search endpoint otherwise would do this here
        
        return allFilms.filter { film in
            film.primaryTitle.localizedStandardContains(searchTerm)
        }
    }
    
    func fetchBannerFilms() async throws -> [FilmCarousel] {
        let url = "http://localhost:8081/bannerMovies"
        return try await fetch(for: url, type: [FilmCarousel].self)
    }
    
    func getMoviesTrailer(for query: String) async throws -> YoutubeSearchResponse {
        guard let query = query.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else { throw APIError.invalidQuery }
        let url = "\(Constants.youtubeBaseURL)?part=snippet&type=video&maxResults=1&q=\(query)&key=\(Constants.APIKey)"
        
        return try await fetch(for: url, type: YoutubeSearchResponse.self)
    }
}
