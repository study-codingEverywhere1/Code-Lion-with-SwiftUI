//
//  Movie.swift
//  Week02_jaeseung
//
//  Created by zsm on 11/25/23.
//

import SwiftUI

struct Movie: Identifiable {
    var id = UUID()
    var title: String
    var date: String
    var mainIMG: String
    var backIMG: String
    var desc: String
    
}

let moviesData: [Movie] = [
    Movie(title: "Thor, Love and Thunder", date: "JUL 8, 2022", mainIMG: "thor", backIMG: "thor", desc: "Steve Rogers leads the newly formed team of Avengers in their continued efforts to safeguard humanity. But after another incident involving the Avengers results in collateral damage, political pressure mounts to install..."),
    Movie(title: "Doctor Strange in the Multiverse of Madness", date: "MAY 6, 2022", mainIMG: "strange", backIMG: "thor", desc: "asdf"),
    Movie(title: "Spider-Man: No Way Home", date: "DEC 17, 2021", mainIMG: "spiderman", backIMG: "thor", desc: "thor"),
    Movie(title: "Eternals", date: "NOV 5, 2021", mainIMG: "eternals", backIMG: "thor", desc: "thor")
]
