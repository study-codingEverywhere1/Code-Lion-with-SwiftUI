//
//  ModelDetailView.swift
//  Week2_Sayhong
//
//  Created by 홍세희 on 2023/11/28.
//

import SwiftUI

struct MovieDetailView: View {
    var movie: MovieData
    var body: some View {
        ZStack {
            Image(movie.detailMovieImage)
                .resizable()
                .ignoresSafeArea()
                .aspectRatio(contentMode: .fill)
            VStack {
                Spacer()
                TrailerView()
                MovieReadMoreContentViews(detailMovieContent: movie.detailMovieContent)
            }
        }
    }
}

#Preview {
    MovieDetailView(movie: movies[0])
}
