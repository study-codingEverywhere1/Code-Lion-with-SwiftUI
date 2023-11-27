//
//  MovieCell.swift
//  MovieViewChallenge_Woogie
//
//  Created by 정정욱 on 11/26/23.
//

import SwiftUI

struct MovieCell: View {
    var movie : Movie
    
    var body: some View {
        HStack{
            Image(movie.imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(15)
            Spacer()
            VStack(alignment: .leading ,spacing: 5){
                Text(movie.name)
                    .foregroundColor(.white)
                Text("개봉일 : \(movie.releaseDate)")
                    .foregroundColor(.red)
                Spacer()
            }
            .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 15))
            Spacer()
                
            
        }
        .frame(width: 320,height: 160)
        .background(.black)
        .cornerRadius(10)
    }
    
}

#Preview {
    MovieCell(movie:
                Movie(name: "서울의 봄", imageName: "서울의 봄", releaseDate: "2023.11.22", explanation : "1979년 12월 12일, 수도 서울 군사반란 발생 그날, 대한민국의 운명이 바뀌었다 대한민국을 뒤흔든 10월 26일 이후, 서울에 새로운 바람이 불어온 것도 잠시 12월 12일, 보안사령관 전두광이 반란을 일으키고 군 내 사조직을 총동원하여 최전선의 전방부대까지 서울로 불러들인다. 권력에 눈이 먼 전두광의 반란군과 이에 맞선 수도경비사령관 이태신을 비롯한 진압군 사이, 일촉즉발의 9시간이 흘러가는데", youtubeLink: "-AZ7cnwn2YI?si=TDIuA_x5Pu9R2hnE")
    )
}
