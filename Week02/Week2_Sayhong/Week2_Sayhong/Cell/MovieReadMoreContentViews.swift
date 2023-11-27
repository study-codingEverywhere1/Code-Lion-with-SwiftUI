//
//  MovieReadMoreContentViews.swift
//  Week2_Sayhong
//
//  Created by 홍세희 on 2023/11/28.
//

import SwiftUI

struct MovieReadMoreContentViews: View {
    @State private var isViewed = true
    var detailMovieContent: String
    var body: some View {
        VStack(spacing: 10) {
            Text(detailMovieContent)
                .foregroundStyle(Color.white)
                .font(.system(size: 26))
                .lineLimit(7)
                .frame(width: 350)
            Button("Read More") {
                isViewed.toggle()
            }
            .bold()
            .foregroundStyle(Color.red)
            .padding()
        }
    }
}

#Preview {
    MovieReadMoreContentViews(detailMovieContent: movies[0].detailMovieContent)
        .background(Color.black)
        
}
