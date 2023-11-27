//
//  ContentView.swift
//  MovieViewChallenge_Woogie
//
//  Created by 정정욱 on 11/26/23.
//

import SwiftUI

struct Movie: Hashable {
    var name : String
    var imageName : String
    var releaseDate : String
    var explanation : String
    var youtubeLink : String
}

struct ContentView: View {
    
    let columns: [GridItem] = [
        //GridItem을 담을 수 있는 배열 생성
        // .flexible : 크기를 화면 프레임에 유연하게 늘렸다 줄었다 할 수 있게 설정
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    var Movies : [Movie] = [
        Movie(name: "서울의 봄", imageName: "서울의 봄", releaseDate: "2023.11.22", explanation : "1979년 12월 12일, 수도 서울 군사반란 발생 그날, 대한민국의 운명이 바뀌었다 대한민국을 뒤흔든 10월 26일 이후, 서울에 새로운 바람이 불어온 것도 잠시 12월 12일, 보안사령관 전두광이 반란을 일으키고 군 내 사조직을 총동원하여 최전선의 전방부대까지 서울로 불러들인다. 권력에 눈이 먼 전두광의 반란군과 이에 맞선 수도경비사령관 이태신을 비롯한 진압군 사이, 일촉즉발의 9시간이 흘러가는데", youtubeLink: "-AZ7cnwn2YI?si=TDIuA_x5Pu9R2hnE"),
        
        Movie(name: "프레디의 피자가게", imageName: "프레디의 피자가게", releaseDate: "2023.11.15",explanation : "환상적이고 즐거움이 넘치는 프레디의 피자가게에 오신 걸 환영합니다” 80년대에 아이들이 실종되고 폐업한지 오래된 프레디의 피자가게 그곳의 야간 경비 알바를 하게 된 ‘마이크'는 캄캄한 어둠만이 존재하는 줄 알았던 피자가게에서 살아 움직이는 피자가게 마스코트 '프레디와 친구들’을 목격한다. 어딘가 기괴하고 섬뜩한 프레디와 친구들이 실체를 드러내기 시작하는데", youtubeLink: "RaGNLFbVfLw?si=7Skc3oWNU17ayL2U"),
        
        Movie(name: "그대들은 어떻게 살 것인가", imageName: "그대들은 어떻게 살것인가", releaseDate: "2023.11.22",explanation : "화재로 어머니를 잃은 11살 소년 ‘마히토’는 아버지와 함께 어머니의 고향으로 간다. 어머니에 대한 그리움과 새로운 보금자리에 적응하느라 힘들어하던 ‘마히토’ 앞에 정체를 알 수 없는 왜가리 한 마리가 나타나고, 저택에서 일하는 일곱 할멈으로부터 왜가리가 살고 있는 탑에 대한 신비로운 이야기를 듣게 된다. 그러던 어느 날, ‘마히토’는 사라져버린 새엄마 ‘나츠코’를 찾기 위해 탑으로 들어가고, 왜가리가 안내하는 대로 이세계(異世界)의 문을 통과하는데", youtubeLink: "RURusloLi-s?si=3ytNHCwCu0AjN4BX"),
        
        Movie(name: "더 마블스", imageName: "더 마블스", releaseDate: "2023.11.08",explanation : "강력한 힘으로 은하계를 수호하는 최강 히어로 캡틴 마블 ‘캐럴 댄버스’ 캡틴 마블의 오랜 친구의 딸이자, 빛의 파장을 조작하는 히어로 ‘모니카 램보’ 최애 히어로 캡틴 마블의 열렬한 팬", youtubeLink: "xC-ITzh98Vo?si=uUIq4DReSON2qjfp"),
        
        Movie(name: "스노우 폭스: 썰매개가 될 거야!", imageName: "스노우 폭스", releaseDate: "2023.11.23",explanation : "난 멋진 썰매개가 되고 싶었을 뿐인데~ 북극을 구하라고??” 해피 꽁꽁 어드벤처가 시작된다! 썰매개가 꿈인 북극여우, 스위프티. 어느날, 썰매개들을 대신해 물건을 배달하러 간 곳에서 북극을 파괴하려는 바다코끼리 일당을 만난다. 스위프티는 북극곰, 순록, 붉은여우 등 친구들과 함께 악당을 막고 위험에 빠진 북극을 구해야만 하는데", youtubeLink: "jDSYYmOIP2s?si=T2x5y8MYJHGBU7Ph"),
        
        Movie(name: "헝거게임: 노래하는 새와 뱀의 발라드", imageName: "헝거게임", releaseDate: "2023.11.15",explanation : "반란의 불씨를 잠재우기 위해 시작된 잔인한 서바이벌 헝거게임. 헝거게임 10회를 맞아 ‘멘토제’가 도입되고 ‘스노우’는 12구역의 소녀 ‘루시 그레이’의 멘토가 된다. 그는 몰락한 가문의 영광을 되찾기 위해 ‘루시 그레이’를 헝거게임에서 우승 시키려 수단과 방법을 가리지 않는데", youtubeLink: "fxKTLR-L8o4?si=fyv7NEslh1q46t8V"),
        
        Movie(name: "사채소년", imageName: "사채소년", releaseDate: "2023.11.22",explanation : "학교 서열 최하위, 고교사채왕이 되다! 존재감도, 빽도, 돈도 없는 서열 최하위 '강진'. 일진들의 괴롭힘에 시달리며 최악의 학교 생활을 이어가던 중 우연한 기회로 사채업자 '랑'에게 동업을 제안받게 된다. 학업에 지친 학생들의 마음을 사랑으로 채워주는 '사채'. '랑'에게 전수받은 특별한 기술을 활용해 학생들에게 돈을 빌려주는 고교사채왕이 된 '강진'은 자신을 괴롭히던 일진 '남영'까지 돈으로 짓밟으며 단숨에 학교 서열 최강자에 등극한다. 짝사랑하는 '다영'과도 가까워지며 꿈같은 시간을 보낸 것도 잠시, 고교사채왕 '강진'의 자리를 위협하는 사람들이 나타나기 시작하는데", youtubeLink: "M3JcNuJrLVo?si=VjdxSlCBnBm3OVPg")
    ]
    
    var body: some View {
        NavigationView {
       
            ScrollView {
                
                // Hero 부분 (위에 사진 부분)
                LazyVGrid(
                    columns: columns, // 3열
                    alignment: .center,
                    spacing: 12
                ) {
                    ForEach(Movies, id: \.self) { movie in
                        NavigationLink(destination: DetailedView(movie: movie)) {
                            MovieCell(movie: movie)
                        }
                    }
                }
                
            }
        
            .background(Color("BackColor"))
            .navigationTitle(
                    Text("MOVIES")
                        .foregroundStyle(.white)
                
            )
            .foregroundColor(.white) // 텍스트의 색상을 하얀색으로 설정
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                        // 왼쪽 부분
                        leading: Image(systemName: "line.3.horizontal")
                            .foregroundColor(.white) // 버튼의 컬러를 화이트로 설정
                        ,
                        trailing: Button(action: {
                           print()
                        }, label: {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.white) // 버튼의 컬러를 화이트로 설정
                        }))
            
         
            
        }

    }
    
}

#Preview {
    ContentView()
}
