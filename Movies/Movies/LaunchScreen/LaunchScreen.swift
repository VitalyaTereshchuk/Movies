
import SwiftUI

struct LaunchScreen: View {
    @State private var isActive = false
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack {
                Image("launchScreenImage")
                    .resizable()
                    .ignoresSafeArea(.all)
                    .scaledToFill()
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .white))
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    withAnimation {
                        isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    LaunchScreen()
}
