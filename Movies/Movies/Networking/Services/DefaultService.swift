import Foundation

struct DefaultService: Service {
    func fetch<T: Decodable>(for URLString: String, type: T.Type) async throws -> T {
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
    
    
    func fetchFilms() async throws -> TrendingMoviesResponse {
        let url = "https://api.themoviedb.org/3/trending/movie/day?api_key=7c1de54e9061f4f2124aaf8669725261"
        
        return try await fetch(for: url, type: TrendingMoviesResponse.self)
    }
}
