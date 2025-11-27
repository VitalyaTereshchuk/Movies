import SwiftUI


struct FilmImageView: View {
    let url: URL?
    
    init(urlPatch: String) {
        self.url = URL(string: urlPatch)
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

//#Preview("postar image") {
//    FilmImageView(film: "https://image.tmdb.org/t/p/w500/m1jFoahEbeQXtx4zArT2FKdbNIj.jpg")
//}
//
//#Preview("banner image") {
//    FilmImageView(film: "https://image.tmdb.org/t/p/w500/jUPCUYoVdTGa5DBSxOTAriLWqmW.jpg")
//}
