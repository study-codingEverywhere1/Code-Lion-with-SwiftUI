//
//  MovieDetailView.swift
//  Week02_jaeseung
//
//  Created by zsm on 11/25/23.
//

import SwiftUI

struct movieDetailView: View {
    var movie: Movie
    var body: some View {
        VStack{
            Image(movie.backIMG)
                .navigationTitle("타이틀")
                .navigationBarTitleDisplayMode(.inline)
        }
    }}

#Preview {
    movieDetailView(movie: Movie(title: "토르", date: "날짜", mainIMG: "thor", backIMG: "thor", desc: "설명입니다."))
}
