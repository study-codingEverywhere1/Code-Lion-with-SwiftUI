//
//  DetailedView.swift
//  MovieViewChallenge_Woogie
//
//  Created by 정정욱 on 11/26/23.
//

import SwiftUI
import WebKit

struct YouTubePlayerView: UIViewRepresentable {
    let videoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.configuration.allowsInlineMediaPlayback = true // 전체화면 재생 비활성화
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let videoURL = URL(string: "https://www.youtube.com/embed/\(videoID)") else {
            return
        }
        
        let request = URLRequest(url: videoURL)
        uiView.load(request)
    }
}

struct DetailedView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var movie: Movie
    var body: some View {
        ScrollView{
    
            VStack{
                ZStack{
                    YouTubePlayerView(videoID: movie.youtubeLink)
                        .frame(width: 350,height: 200)
                        .cornerRadius(50)
                        .background(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color(.lightGray).opacity(0.8), lineWidth: 5)
                        )
                }
                .padding(EdgeInsets(top: 300, leading: 0, bottom: 0, trailing: 0))
                
                ZStack{
                    
                    Rectangle()
                        .frame(width: 350)
                        .cornerRadius(30)
                        .opacity(0.9)
                    Text("\(movie.explanation)...\(Text("더보기").foregroundStyle(Color.red))")
                        .padding()
                        .foregroundStyle(Color.white)
                        .frame(width: 350)
                    
                }
            }
    
        }
     
        .background(
            Image(movie.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 300)
                .opacity(0.8)
                .ignoresSafeArea()
        )
        //NavigationLink로 이동하는 DetailedView에 navigationBarItems 추가가능
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(
               leading: Button(action: {
                   presentationMode.wrappedValue.dismiss()
               }, label: {
                   Image(systemName: "chevron.left")
                       .foregroundColor(.white)
               }),
               trailing: Button(action: {
                   print()
               }, label: {
                   Image(systemName: "magnifyingglass")
                       .foregroundColor(.white)
               })
           )
        
    }
}

#Preview {
    DetailedView(movie:
                    
                    Movie(name: "서울의 봄", imageName: "서울의 봄", releaseDate: "2023.11.22", explanation : "1979년 12월 12일, 수도 서울 군사반란 발생 그날, 대한민국의 운명이 바뀌었다 대한민국을 뒤흔든 10월 26일 이후, 서울에 새로운 바람이 불어온 것도 잠시 12월 12일, 보안사령관 전두광이 반란을 일으키고 군 내 사조직을 총동원하여 최전선의 전방부대까지 서울로 불러들인다. 권력에 눈이 먼 전두광의 반란군과 이에 맞선 수도경비사령관 이태신을 비롯한 진압군 사이, 일촉즉발의 9시간이 흘러가는데", youtubeLink: "-AZ7cnwn2YI?si=TDIuA_x5Pu9R2hnE")
                 
    )
}
