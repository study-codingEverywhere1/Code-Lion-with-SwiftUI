//
//  MainView.swift
//  Week2_Nelchupapa
//
//  Created by 백대홍 on 11/28/23.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color.black
                    .ignoresSafeArea()
                ScrollView {
                    VStack {
                        ForEach(moviesData) { movies in
                            MovieCell(movie: movies)
                        }
                    }
                }
                .padding()
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        VStack {
                            Text("MOVIES")
                                .foregroundColor(.white)
                                .font(.title3)
                                .bold()
                        }
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            
                        } label: {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                    
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            
                        } label: {
                            Image(systemName: "line.3.horizontal")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                }
                .toolbarBackground(.visible, for: .navigationBar)
                .toolbarBackground(.black, for: .navigationBar)
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    MainView()
}
