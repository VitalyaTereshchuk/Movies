//
//  SearchScreen.swift
//  Movies
//
//  Created by Vitaly on 20.11.2025.
//

import SwiftUI

struct SearchScreen: View {
    @State private var text: String = ""
    
    var body: some View {
        NavigationStack {
            Text("Search screen")
                .searchable(text: $text)
        }
    }
}

#Preview {
    SearchScreen()
}
