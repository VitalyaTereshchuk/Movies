import SwiftUI

struct ButtonShowTrailer: View {
    @Binding var showSheet: Bool
    
    var body: some View {
        Button {
            showSheet.toggle()
        } label: {
            Text("WATCH TRAILER")
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding(.vertical)
                .frame(maxWidth: .infinity)
                .background {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(.pink)
                }
        }
    }
}
//
//#Preview {
//    ButtonShowTrailer(showSheet: <#Binding<Bool>#>)
//}
