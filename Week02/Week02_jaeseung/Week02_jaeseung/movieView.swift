//
//  MovieView.swift
//  Week02_jaeseung
//
//  Created by zsm on 11/25/23.
//

import SwiftUI

struct movieView: View {
    var movie: Movie
    var body: some View {
        NavigationLink(destination: movieDetailView(movie: movie)) {
            HStack{
                Image(movie.mainIMG ?? "thor")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                VStack(spacing:10){
                    Text(movie.title).font(.headline).foregroundColor(.white)
                    Text(movie.date).foregroundColor(.red)
                }
            }
            .padding(20)
            .frame(width: 300, height: 300)
            .background(.black)
         
            

            
            
            
        }
        
    }
}

#Preview {
    movieView(movie: Movie(title: "THOR", date: "MAY 6, 2022", mainIMG: "thor", backIMG: "thor", desc: "설명입니다"))
}
