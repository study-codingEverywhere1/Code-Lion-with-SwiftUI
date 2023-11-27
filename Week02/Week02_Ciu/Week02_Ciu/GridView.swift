//
//  GridView.swift
//  Week02_Ciu
//
//  Created by 강치우 on 11/27/23.
//

import SwiftUI

struct GridView: View {
    
    @Binding var columns: [GridItem]
    @State var movie: movieModel

    var body: some View {
        
            HStack(spacing: 20) {
                VStack {
                    ZStack {
                        Image(movie.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 250)
                            .cornerRadius(15)
                    }
                }
                VStack(alignment: .leading) {
                    Text(movie.name)
                        .font(.title3)
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .padding(.top, 10)
                    
                    Text(movie.date)
                        .foregroundStyle(.red)
                        .fontWeight(.heavy)
                        .padding([.top, .bottom], 10)
                    
                    NavigationLink(destination: DetailView(movie: movie)) {
                        Text("더보기")
                            .font(.callout)
                            .fontWeight(.bold)
                    }
                    .frame(width: 80, height: 30)
                    .buttonStyle(PlainButtonStyle())
                    .foregroundStyle(.white)
                    .background(.gray)
                    .cornerRadius(10)
                    .padding(.top, 10)
            }
        }
        .padding(.trailing)
        .background(Color.white.opacity(0.01))
        .cornerRadius(15)
    }
}
