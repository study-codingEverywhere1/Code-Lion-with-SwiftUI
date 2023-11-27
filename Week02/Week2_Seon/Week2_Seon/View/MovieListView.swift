//
//  ContentView.swift
//  Week2_Seon
//
//  Created by 정인선 on 11/24/23.
//

import SwiftUI

struct MovieListView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @StateObject var movieModel = MovieInfoModel()
    
    private var gridItems = [
        //
        GridItem(.adaptive(minimum: 200))
    ]
    
    var body: some View {
        
        NavigationStack {   
            
            ScrollView {
                Spacer()
                    .frame(height: 50)
                LazyVGrid(columns: gridItems) {
                    ForEach(movieModel.moviInfos) { movie in
                        NavigationLink(destination: MovieDetailView(), label: {
                            MovieCell(movieInfo: movie)
                        })
                        .padding(.vertical, 2)
                    }
                }
            }
            .background(colorScheme == .dark ? Color(hue: 0.987, saturation: 0.011, brightness: 0.094) : .white)
            .navigationTitle("MOVIES")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "line.horizontal.3")
                        .foregroundStyle(colorScheme == .dark ? .white : .black)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(colorScheme == .dark ? .white : .black)
                }
            }
        }
    }
}

#Preview {
    MovieListView()
}
