//
//  MovieListCellView.swift
//  Week2_Sayhong
//
//  Created by 홍세희 on 2023/11/28.
//

import SwiftUI
//짜증나요

struct MovieListCellView: View {
    var movie: MovieData
    var body: some View {
        ZStack(alignment: .leading) {
            //TODO: 커스텀으로 부분 둥글게 만들기 -> 얘도 Cell 따로 빼기
            Rectangle()
                .fill(Color.black)
                .frame(width: 340, height: 200)
                .clipShape(
                    .rect(topLeadingRadius: 20.0, bottomTrailingRadius: 20.0)
                )
            HStack(spacing: 0) {
                MoviePosterView(movieName: movie.movieImage)
                MovieTitleDateView(title: movie.movieTitle, date: movie.movieData)
            }
        }
//        VStack {
//            Path { path in
//                // 1. 오른쪽 모서리로 커서 이동
//                path.move(to: CGPoint(x: 300, y: 0))
//                // 2.
//                path.addLine(to: CGPoint(x: 200, y: 200))
//                // 3.
//                path.addLine(to: CGPoint(x: 0, y: 200))
//                // 4. 왼쪽 모서리로 커서 이동
//                path.addLine(to: CGPoint(x: 0, y: 0))
//                // 5. 자동으로 경로를 닫음
//                path.closeSubpath()
//            }
//            .fill(Color.black)
//        }
       
    }
}

#Preview {
    MovieListCellView(movie: movies[0])
}
