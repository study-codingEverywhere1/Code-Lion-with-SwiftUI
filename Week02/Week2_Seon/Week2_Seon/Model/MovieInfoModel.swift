//
//  MoviePoster.swift
//  Week2_Seon
//
//  Created by 정인선 on 11/26/23.
//

import Foundation

struct MovieInfo: Identifiable {
    let id = UUID()
    let poster: String
    let title: String
    let release: String
}

class MovieInfoModel: ObservableObject {
    @Published var moviInfos: [MovieInfo] = [
        MovieInfo(poster: "thor", title: "Thor: Love and Thunder", release: "JUL 8, 2022"),
        MovieInfo(poster: "doctor_strange", title: "Doctor Strange in the Multiverse of madness", release: "MAY 6, 2022"),
        MovieInfo(poster: "spiderman", title: "Sipder-Man: No Way Home", release: "DEC 17, 2021"),
        MovieInfo(poster: "eternals", title: "Eternals", release: "NOV 5, 2021"),
        MovieInfo(poster: "civil_war", title: "Captain America: Civil War", release: "April 12, 2016")
    ]
}
