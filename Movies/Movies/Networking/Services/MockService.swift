import Foundation

struct MockService: ServiceProtocol {
    struct SampleData: Decodable {
        let results: [Film]
        let result: [FilmCarousel]
    }
    
    private func loadSampleData(for urlResource: String) throws -> SampleData {
        guard let url = Bundle.main.url(forResource: urlResource, withExtension: "json") else {
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
    func fetchFilms() async throws -> [Film] {
        let data = try loadSampleData(for: "SampleData")
        return data.results
    }
    
    func fetchBannerFilms() async throws -> [FilmCarousel] {
        let data = try loadSampleData(for: "CarouselMoviesData")
        return data.result
    }
    
    //MARK: Preview/ testing only
    func fetchFilm() -> Film {
        let data = try! loadSampleData(for: "SampleData")
        return data.results.first!
    }
}
