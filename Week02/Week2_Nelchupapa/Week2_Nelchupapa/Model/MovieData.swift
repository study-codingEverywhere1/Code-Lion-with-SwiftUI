//
//  MovieData.swift
//  Week2_Nelchupapa
//
//  Created by 백대홍 on 11/28/23.
//


import Foundation

struct Movie: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var videolink: String
    var mainimage: String
    var detailimage: String
    var star: Double
    var date: String
}

struct Actor: Identifiable {
    var id = UUID()
    var actorname: [String]
    var actorpic: [String]
}

var moviesData: [Movie] = [
    Movie(title: "The Avengers", description: "ASSEMBLE! 최강의 슈퍼히어로들이 모였다!지구의 운명을 건 거대한 전쟁이 시작된다!지구의 안보가 위협당하는 위기의 상황에서 슈퍼히어로들을 불러모아 세상을 구하는, 일명 [어벤져스] 작전. 에너지원 ‘큐브’를 이용한 적의 등장으로 인류가 위험에 처하자 국제평화유지기구인 쉴드 (S.H.I.E.L.D)의 국장 닉 퓨리(사무엘 L.잭슨)는 [어벤져스] 작전을 위해 전 세계에 흩어져 있던 슈퍼히어로들을 찾아나선다. 아이언맨(로버트 다우니 주니어)부터 토르(크리스 헴스워스), 헐크(마크 러팔로), 캡틴 아메리카(크리스 에반스)는 물론, 쉴드의 요원인 블랙 위도우(스칼렛 요한슨), 호크 아이(제레미 레너)까지, 최고의 슈퍼히어로들이 [어벤져스]의 멤버로 모이게 되지만, 각기 개성이 강한 이들의 만남은 예상치 못한 방향으로 흘러가는데… 지구의 운명을 건 거대한 전쟁 앞에 [어벤져스] 작전은 성공할 수 있을까?", videolink: "https://www.youtube.com/watch?v=mck3JCl2uwQ", mainimage: "avengers1", detailimage:"avengers1" ,  star: 4.7, date: "JUL 8, 2022")
    ,
    Movie(title: "Iron Man 3", description: "지금까지의 아이언맨은 잊어라! 뉴욕 사건의 트라우마로 인해 영웅으로서의 삶에 회의를 느끼는 토니 스타크(로버트 다우니 주니어). 그가 혼란을 겪는 사이 최악의 테러리스트 만다린(벤 킹슬리)을 내세운 익스트리미스 집단 AIM이 스타크 저택에 공격을 퍼붓는다. 이 공격으로 그에게 남은 건 망가진 수트 한벌 뿐.모든 것을 잃어버린 그는 다시 테러의 위험으로부터 세계와 사랑하는 여인(기네스 팰트로)를 지켜내야 하는 동시에 머릿속을 떠나지 않던 한가지 물음의 해답도 찾아야만 한다.과연 그가 아이언맨인가? 수트가 아이언맨인가?", videolink: "https://www.youtube.com/watch?v=mck3JCl2uwQ", mainimage: "Iron-man3", detailimage:"Iron-man3" ,  star: 4.7, date: "APR 25, 2013")
    ,
    Movie(title: "The Avengers 4", description: "인피니티 워 이후 절반만 살아남은 지구, 마지막 희망이 된 어벤져스. 먼저 떠난 그들을 위해 모든 것을 걸었다! 위대한 어벤져스, 운명을 바꿀 최후의 전쟁이 펼쳐진다!", videolink: "https://www.youtube.com/watch?v=mck3JCl2uwQ", mainimage: "Avengers4", detailimage:"Avengers4" , star: 4.7, date: "APR 24, 2019")
]


var actorsData: [Actor] = [
    Actor(actorname: ["robert", "scarlet"], actorpic: ["robert", "scarlet"]),
    Actor(actorname: ["robert", "scarlet"], actorpic: ["robert", "scarlet"]),
    Actor(actorname: ["robert", "scarlet"], actorpic: ["robert", "scarlet"])
]


// MARK: - 필요한 값들

/**
 - 제목
 - 상세보기 텍스트
 - 영상 링크
 - 이미지
 - 상세 보기 이미지
 - 개봉 날짜
 - 평점
 - 배우 목록 리스트로
 
 - 카테고리? -> 시간 남으면 추가 해서 섹션별로 디자인
 */
