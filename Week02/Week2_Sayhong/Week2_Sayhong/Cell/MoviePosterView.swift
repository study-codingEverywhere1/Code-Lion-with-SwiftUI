//
//  MoviePosterView.swift
//  Week2_Sayhong
//
//  Created by 홍세희 on 2023/11/28.
//

import SwiftUI

struct MoviePosterView: View {
    var movieName: String
    var body: some View {
        Image(movieName)
            .resizable()
            .frame(width: 150, height: 200)
            .aspectRatio(contentMode: .fit)
            .clipShape(
                .rect(topLeadingRadius: 30.0, bottomTrailingRadius: 30.0)
            )
    }
}

#Preview {
    MoviePosterView(movieName: "roofi")
}
