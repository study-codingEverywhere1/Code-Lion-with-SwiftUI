//
//  MovieDetailMain.swift
//  Week2_Nelchupapa
//
//  Created by 백대홍 on 11/28/23.
//

import SwiftUI

struct MovieDetailMain: View {
    var movie: Movie
    var actor: [Actor] = actorsData
    private var videos: [Video] {
        guard let path = Bundle.main.resourcePath, let files = try? FileManager.default.contentsOfDirectory(atPath: path) else { return [] }
        var videos: [Video] = []
        for fileName in files where fileName.hasSuffix("mp4") {
            let videoName = fileName.replacingOccurrences(of: ".mp4", with: "")
            let video = Video(videoName: videoName)
            videos.append(video)
        }
        return videos
    }
    
    var body: some View {
        ZStack {
            Image(movie.detailimage)
                .resizable()
                .ignoresSafeArea()
                .blur(radius: 1.5)
            ScrollView {
                VStack(alignment: .leading) {
                    Spacer().frame(height: 280)
                    
                    NavigationLink(destination: VideoPlayView(video: videos[0])) {
                        VideoCardView(video: videos[0])
                    }.padding(.bottom)
                    
                    readmoreView(movie.description, lineLimit: 6)
                        .padding()
                            
                    Text("출연 배우")
                        .font(.title)
                        .foregroundStyle(Color.white)
                        .padding(.leading)
                    ActorCellView(actors: Actor(actorname: ["robert", "scarlet"], actorpic: ["robert", "scarlet"]))
                }
                .padding()
            }
        }
        
        
    }
}

#Preview {
    MovieDetailMain(movie: Movie(title: "The Avengers", description: "ASSEMBLE! 최강의 슈퍼히어로들이 모였다!지구의 운명을 건 거대한 전쟁이 시작된다!지구의 안보가 위협당하는 위기의 상황에서 슈퍼히어로들을 불러모아 세상을 구하는, 일명 [어벤져스] 작전. 에너지원 ‘큐브’를 이용한 적의 등장으로 인류가 위험에 처하자 국제평화유지기구인 쉴드 (S.H.I.E.L.D)의 국장 닉 퓨리(사무엘 L.잭슨)는 [어벤져스] 작전을 위해 전 세계에 흩어져 있던 슈퍼히어로들을 찾아나선다. 아이언맨(로버트 다우니 주니어)부터 토르(크리스 헴스워스), 헐크(마크 러팔로), 캡틴 아메리카(크리스 에반스)는 물론, 쉴드의 요원인 블랙 위도우(스칼렛 요한슨), 호크 아이(제레미 레너)까지, 최고의 슈퍼히어로들이 [어벤져스]의 멤버로 모이게 되지만, 각기 개성이 강한 이들의 만남은 예상치 못한 방향으로 흘러가는데… 지구의 운명을 건 거대한 전쟁 앞에 [어벤져스] 작전은 성공할 수 있을까?", videolink: "https://www.youtube.com/watch?v=mck3JCl2uwQ", mainimage: "Avengers1", detailimage:"Avengers1" ,  star: 4.7, date: "JUL 8, 2022"))
}
