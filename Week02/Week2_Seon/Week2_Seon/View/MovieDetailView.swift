//
//  MovieDetailView.swift
//  Week2_Seon
//
//  Created by 정인선 on 11/26/23.
//

import SwiftUI
import AVKit

struct MovieDetailView: View {
    
    @State var readAll = false
    let movieExplanation =
"""
Steve Rogers leads the newly formed team of Avengers in their continued efforts to safeguard humanity. But after another incident involving the Avengers results in collateral damage, political pressure mounts to install a system of accountability, headed by a governing body to oversee and direct the team. The new status quo fractures the Avengers, resulting in two camps: one led by Steve Rogers and his desire for the Avengers to remain free to defend humanity without government interference; the other following Tony Stark's surprising decision to support government oversight and accountability.
"""
    
    var body: some View {
        GeometryReader { geo in
            Image("civil_war_detail2")
                .resizable()
                .scaledToFill()
                .frame(width: geo.size.width, height: geo.size.height)
                .contrast(0.7)  // 대비 (기본값 1)
                .overlay {  // 이미지를 어둡게 보이기 위함
                    Rectangle()
                        .foregroundStyle(.black)
                        .opacity(0.3)   // 불투명도 (최대값 1)
                }
            
            VStack(alignment: .leading) {
                VideoPlayer(player: AVPlayer(url: URL(string: "https://www.ebookfrenzy.com/ios_book/movie/movie.mov")!))
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 170)
                    .clipShape(RoundedRectangle(cornerRadius: 60))
                    .overlay {
                        RoundedRectangle(cornerRadius: 60)
                            .stroke(.white, lineWidth: 2)
                    }
                    .padding(.vertical)
                
                Text(movieExplanation)
                    .id("Identifier")
                    .font(.system(size: 20))
                    .fontWeight(.light)
                    .lineSpacing(2)   // 행간 (기본값 0)
                    .tracking(1.5)  // 자간 (기본값 1)
                    .lineLimit(7)
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                
                Button {
                    
                } label: {
                    Text("Read more")
                        .foregroundStyle(.red)
                        .fontWeight(.bold)
                }
                .padding(.vertical, 1)
            }
            .padding(.horizontal, 30)
            .offset(
                y: geo.frame(in: .local).maxY / 9 * 4
            )
            //                    }
            
        }
        .ignoresSafeArea()
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Image(systemName: "line.horizontal.3")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
            }
            ToolbarItem(placement: .topBarTrailing) {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    
}

#Preview {
    MovieDetailView()
}
