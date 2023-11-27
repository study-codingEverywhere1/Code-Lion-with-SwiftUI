//
//  MovieListCell.swift
//  Week2_Seon
//
//  Created by 정인선 on 11/25/23.
//

import SwiftUI

struct MovieCell: View {

    let movieInfo: MovieInfo
    
    var body: some View {
        HStack(spacing: 20) {
            Image(movieInfo.poster)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 170)
                .background(.gray)
            //                    .frame(width: 140, height: 160)
                .conerRadius(30, corners: [.topLeft, .bottomRight])
            
            VStack(alignment: .leading, spacing: 10) {
                Text(movieInfo.title)
                    .font(.title2)
                    .foregroundStyle(.white)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .multilineTextAlignment(.leading)
                Text(movieInfo.release)
                    .fontWeight(.heavy)
                    .foregroundStyle(.red)
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical)
        }
        .background(.black)
        
        .conerRadius(30, corners: [.topLeft, .bottomRight])
        .padding(.horizontal, 30)
        
    }
}

extension View {
    func conerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}

#Preview {
    MovieCell(movieInfo: MovieInfo(poster: "thor", title: "Thor: Love and Tunder", release: "JUL 8, 2022"))
}
