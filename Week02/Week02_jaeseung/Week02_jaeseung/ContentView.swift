//
//  ContentView.swift
//  Week02_jaeseung
//
//  Created by zsm on 11/25/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                
                VStack(alignment:.center,spacing: 20){
                    ForEach(moviesData) { movie in
                        movieView(movie: movie)
                    }.cornerRadius(30)
                }
                .frame(width: 400, height: 1000)
                
            }
            .background(.black)
            .opacity(0.93)
        }
    }
}

#Preview {
    ContentView()
}

/*
 1. 프레임, 레이아웃 잡는 법
  - 공통요소들을 넣을 레이아웃을 뭘로 잡아야함?
 
 2. 
 */
