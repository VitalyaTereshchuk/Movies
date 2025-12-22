import SwiftUI
import SDWebImageSwiftUI

struct FilmImageView: View {
    let url: URL?
    
    init(urlPatch: String) {
        self.url = URL(string: urlPatch)
    }
    
    init(url: URL?) {
        self.url = url
    }
    
    var body: some View {
        WebImage(url: url) { image in
            image
                .resizable()
                .scaledToFill()
        } placeholder: {
            Color(.gray)
            ProgressView()
        }
        // Supports options and context, like `.delayPlaceholder` to show placeholder only when error
        .onSuccess { image, _, _ in
            // Success
//            print("Loaded image: \(image)")
            // Note: Data exist only when queried from disk cache or network. Use `.queryMemoryData` if you really need data
        }
        .indicator(.activity) // Activity Indicator
        .transition(.fade(duration: 0.5)) // Fade Transition with duration
    }
}

#Preview("postar image") {
    FilmImageView(url: URL.convertAssetImage(named: "primaryImage"))
        .frame(width: 200 ,height: 300)
        .cornerRadius(10)
}
