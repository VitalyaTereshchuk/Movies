import SwiftUI

extension View {
    @ViewBuilder
    func fullScreenSheet<Content: View, Background: View> (
        showsDragIndicator: Bool = true,
        isPresented: Binding<Bool>,
        @ViewBuilder content: @escaping () -> Content,
        @ViewBuilder background: @escaping () -> Background
    ) -> some View {
        self
            .fullScreenCover(isPresented: isPresented) {
                FullScreenSheet(content: content, background: background)
            }
    }
}

fileprivate struct FullScreenSheet<Content: View, Background: View>: View {
    @ViewBuilder var content: Content
    @ViewBuilder var background: Background
    
    var body: some View {
            content
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .contentShape(.rect)
            .presentationBackground {
                background
            }
    }
}
