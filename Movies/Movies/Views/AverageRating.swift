//
//  AverageRating.swift
//  Movies
//
//  Created by Vitaly on 01.12.2025.
//

import SwiftUI

struct AverageRating: View {
    let film: Film
    
    var body: some View {
        ZStack(
            alignment: .center
        ) {
            if film.averageRating == nil {
                FilmImageView(urlPatch: film.primaryImage)
                    .frame(width: 100, height: 150)
                    .cornerRadius(10)
            } else {
                Rectangle()
                    .frame(width: 40, height: 20)
                    .cornerRadius(8)
                    .foregroundStyle(.black.opacity(0.6))
                
                HStack(spacing: 2) {
                    Text("\(String(film.averageRating ?? 0))")
                        .font(.system(size: 10))
                        .foregroundStyle(.white)
                    Image("starImage")
                        .resizable()
                        .frame(width: 10, height: 10)
                }
            }
        }
        .padding(.top, 6)
        .padding(.leading, 6)
    }
}
