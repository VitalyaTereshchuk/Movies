import SwiftUI


struct FilmImageView: View {
    let url: URL?
    
    init(urlPatch: String) {
        self.url = URL(string: urlPatch)
    }
    
    init(url: URL?) {
        self.url = url
    }
    
    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                Color(white: 0.8)
                    .overlay {
                        ProgressView()
                            .controlSize(.large)
                    }
            case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
            case .failure(_):
                Text("Could not get image")
            @unknown default:
                fatalError()
            }
        }
    }
}

#Preview("postar image") {
    FilmImageView(url:  URL.convertAssetImage(named: "primaryImage"))
        .frame(width: 200 ,height: 300)
        .cornerRadius(10)
}
//
//#Preview("banner image") {
//    FilmImageView(film: "https://image.tmdb.org/t/p/w500/jUPCUYoVdTGa5DBSxOTAriLWqmW.jpg")
//}
