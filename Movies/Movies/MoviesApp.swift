import SwiftUI
import SDWebImageWebPCoder
import SDWebImage
import SDWebImageAVIFCoder

@main
struct MoviesApp: App {
    init() {
        // Global network bootloader settings
        SDWebImageDownloader.shared.config.downloadTimeout = 12
        SDWebImageDownloader.shared.config.maxConcurrentDownloads = 6
        // WebP support
        SDImageCodersManager.shared.addCoder(SDImageWebPCoder.shared)
        // AVIF supporta
        SDImageCodersManager.shared.addCoder(SDImageAVIFCoder.shared)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

