import SwiftUI

struct AnimatedCircleButtonListMovies: View {
    @Binding var isHighlighted: Bool
    @FocusState.Binding var isFocused: Bool
    @Binding var showSheet: Bool
    @Binding var highlightCircle: Bool
    
    @State private var sweep: Double = 0
    @State private var isAnimating: Bool = false
    
    var body: some View {
        Button {
            showSheet.toggle()
        } label: {
            Image(systemName: "list.and.film")
                .font(.system(size: 18))
                .foregroundStyle(Color(.pink.opacity(0.8)))
        }
        .padding(15)
        .background {
            ZStack {
                highlightingBackgroundView()
                
                Color.black.opacity(0.15)
                    .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: .black.opacity(0.1), radius: 15, x: 0, y: -5)
            }
            .onAppear {
                // We start an infinite angle animation (0 -> 360).
                // If the highlight circle is turned off, the animation still runs; you can stop it if you want.
                isAnimating = true
                sweep = 0
                
                animateSweep()
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 8) {
                    isAnimating = false
                    
                }
            }
        }
    }
    
    private func animateSweep() {
        guard isAnimating else { return }
        
        withAnimation(.linear(duration: 2.5)) {
            sweep = 360
        }
        
        // After execution, we restart if everything is still allowed.
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            sweep = 0
            animateSweep()
        }
    }
    
    @ViewBuilder
    private func highlightingBackgroundView() -> some View {
        ZStack {
            // Animated highlighting - draw a stroke, then mask it with an angular gradient
            if highlightCircle {
                Circle()
                    .stroke(Gradient(colors: [.indigo, .purple, .pink]), lineWidth: 4)
                    .mask {     // the mask determines where the highlight is visible
                        // AngularGradient with a narrow white sector in the middle of the transparency
                        AngularGradient(
                            gradient: Gradient(stops: [
                                .init(color: .clear, location: 0.00),
                                .init(color: .white, location: 0.50), // sector center
                                .init(color: .clear, location: 0.55),
                                .init(color: .clear, location: 1.00),
                            ]),
                            center: .center,
                            angle: .degrees(sweep)
                        )
                    }
                    .blur(radius: 2)                               // light blur for softness
                // while isAnimating == true - show this layer, otherwise it smoothly disappears
                    .opacity(isAnimating ? 1 : 0)
                    .animation(.easeOut(duration: 3), value: isAnimating)
                
                //Full colored circle (below it) - appears when the animation is complete
                Circle()
                    .stroke(Gradient(colors: [.indigo, .purple, .pink]), lineWidth: 4)
                    .blur(radius: 2)
                    .opacity(isAnimating ? 0 : 1)
                    .animation(.easeIn(duration: 0.35), value: isAnimating)
            }
        }
    }
}
