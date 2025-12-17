import Foundation

struct MockService: ServiceProtocol {
    struct SampleData: Decodable {
        let results: [Film]
    }
    
    struct CarouselData: Decodable {
        let results: [FilmCarousel]
    }
    
    private func loadSampleData<T: Decodable>(for urlResource: String, type: T.Type) throws -> T {
        guard let url = Bundle.main.url(forResource: urlResource, withExtension: "json") else {
            throw APIError.invalidURL
        }
        
        do {
            let data = try Data(contentsOf: url)
            return try JSONDecoder().decode(type, from: data)
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
        let data = try loadSampleData(for: "SampleData", type: SampleData.self)
        return data.results
    }
    
    func searchFilms(for searchTerm: String) async throws -> [Film] {
        let allFilms = try await fetchFilms() 
        
        return allFilms.filter { film in
            film.primaryTitle.localizedStandardContains(searchTerm)
        }
    }
    
    func fetchBannerFilms() async throws -> [FilmCarousel] {
        let data = try loadSampleData(for: "CarouselMoviesData", type: CarouselData.self)
        return data.results
    }
    
    //MARK: Preview/ testing only
    func fetchFilm() -> Film {
        let data = try! loadSampleData(for: "SampleData", type: SampleData.self)
        return data.results.first!
    }
    
    func fetchBannerFilm() -> FilmCarousel {
        let data = try! loadSampleData(for: "CarouselMoviesData", type: CarouselData.self)
        return data.results.first!
    }
}
