import SwiftUI
import YouTubePlayerKit

struct TrailerScreen: View {
    let url: URL?
    
    init(urlPatch: String) {
        self.url =  URL(string: "https://www.youtube.com/watch?v=\(urlPatch)")
    }
    
    var body: some View {
        if let url {
            VStack() {
                YouTubePlayerView(YouTubePlayer(url: url))
                    .frame(height: 300)
                    .cornerRadius(10)
                    .padding(.horizontal, 8)
            }
        }
    }
}
    
    
    //struct TrailerScreen: View {
    //    let url: URL?
    //
    //    init(urlPatch: String) {
    //        self.url =  URL(string: "https://www.youtube.com/watch?v=\(urlPatch)")
    //    }
    //
    //    var body: some View {
    //        WebView(url: url)
    //            .frame(height: 250)
    //    }
    //}
    //
    //struct WebView: UIViewRepresentable {
    //    let url: URL?
    //
    //    func makeUIView(context: Context) -> WKWebView {
    //        return WKWebView()
    //    }
    //
    //    func updateUIView(_ webView: WKWebView, context: Context) {
    //        guard let url else { return }
    //        let request = URLRequest(url: url)
    //        webView.load(request)
    //    }
    //}
    
    //#Preview {
    //        TitlePreviewTrailerView()
    //}
