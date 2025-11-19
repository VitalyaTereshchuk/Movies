import Foundation

struct MockService: Service {
    struct SampleData: Decodable {
        let results: [Film]
    }
    
    private func loadSampleData() throws -> SampleData {
        guard let url = Bundle.main.url(forResource: "SampleData", withExtension: "json") else {
            throw APIError.invalidURL
        }
        
        do {
            let data = try Data(contentsOf: url)
            return try JSONDecoder().decode(SampleData.self, from: data)
        }
        catch let error as DecodingError {
            print(error)
            throw APIError.decoding(error)
        }
        catch {
            throw APIError.networkError(error)
        }
    }
    
    //MARK: Protocol conformance
    func fetchFilms() async throws -> TrendingMoviesResponse {
        let data = try loadSampleData()
        return TrendingMoviesResponse(results: data.results)
    }
    
    //MARK: Preview/ testing only
    func fetchFilm() -> Film {
        let data = try! loadSampleData()
        return data.results.first!
    }
}
