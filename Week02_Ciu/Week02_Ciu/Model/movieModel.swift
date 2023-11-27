//
//  movieModel.swift
//  Week02_Ciu
//
//  Created by 강치우 on 11/27/23.
//

import SwiftUI

struct movieModel: Identifiable {
    
    let id: Int
    let name: String
    let image: String
    let date: String
    let intro: String
}

struct movieDatas {
    
    static var recommendation: [movieModel] = [
        movieModel(id: 1, name: "극한직업", image: "movie1", date: "Jan 01, 2019",
                   intro: "불철주야 달리고 구르지만 실적은 바닥 급기야 해체 위기를 맞는 마약반!\n더 이상 물러설 곳이 없는 팀의 맏형 고반장은\n국제 범죄조직의 국내 마약 밀반입 정황을 포착하고\n장형사, 마형사, 영호, 재훈까지\n4명의 팀원들과 함께 잠복 수사에 나서는데..."),
        movieModel(id: 2, name: "기생충", image: "movie2", date: "May 05, 2019",
                   intro: "전원백수로 살 길 막막하지만\n사이는 좋은 기택(송강호) 가족.장남 기우(최우식)에게\n명문대생 친구가 연결시켜 준 고액 과외 자리는 모처럼 싹튼 고정수입의 희망이다.\n온 가족의 도움과 기대 속에 박사장(이선균)\n집으로 향하는 기우..."),
        movieModel(id: 3, name: "날씨의 아이", image: "movie3", date: "Sep 09, 2021",
                   intro: "비가 그치지 않던 어느 여름날, 가출 소년 ‘호다카’는\n수상한 잡지사에 취직하게 되고 비밀스러운 소녀 ‘히나’를 우연히 만난다.\n“지금부터 하늘이 맑아질 거야”\n그녀의 기도에 거짓말 같이 빗줄기는 멈추고,\n사람들의 얼굴에 환한 빛이 내려온다..."),
        movieModel(id: 4, name: "범죄도시", image: "movie4", date: "Oct 10, 2017",
                   intro: "대체불가 괴물형사 마석도, 서울 광수대로 발탁!\n베트남 납치 살해범 검거 후 7년 뒤,\n‘마석도’(마동석)는 새로운 팀원들과 함께 살인사건을 조사한다.\n사건 조사 중, ‘마석도’는 신종 마약 사건이 연루되었음을\n알게 되고 수사를 확대한다. 한편..."),
        movieModel(id: 5, name: "범죄도시2", image: "movie5", date: "May 05, 2022",
                   intro: "가리봉동 소탕작전 후 4년 뒤,\n금천서 강력반은 베트남으로 도주한 용의자를\n인도받아 오라는 미션을 받는다.\n괴물형사 ‘마석도’(마동석)와 ‘전일만’(최귀화) 반장은\n현지 용의자에게서 수상함을 느끼고,\n그의 뒤에 무자비한 악행을 벌이는\n‘강해상’(손석구)이 있음을 알게 되는데..."),
        movieModel(id: 6, name: "조커", image: "movie6", date: "Oct 10, 2019",
                   intro: "고담시의 광대 아서 플렉은 코미디언을 꿈꾸는 남자.\n하지만 모두가 미쳐가는 코미디 같은 세상에서 맨 정신으로는\n그가 설 자리가 없음을 깨닫게 되는데…\n이제껏 본 적 없는 진짜 ‘조커’를 만나라!"),
        movieModel(id: 7, name: "너의 이름은", image: "movie7", date: "Sep 09, 2021",
                   intro: "아직 만난 적 없는 너를, 찾고 있어\n천년 만에 다가오는 혜성 기적이 시작된다\n도쿄에 사는 소년 ‘타키’와 시골에 사는 소녀 ‘미츠하’는\n서로의 몸이 뒤바뀌는 신기한 꿈을 꾼다 낯선 가족, 낯선 친구들, 낯선 풍경들...\n반복되는 꿈과 흘러가는 시간 속, 마침내 깨닫는다\n우리, 서로 뒤바뀐 거야?"),
        movieModel(id: 8, name: "라라랜드", image: "movie8", date: "Dec 12, 2016",
                   intro: "꿈을 꾸는 사람들을 위한 별들의 도시 ‘라라랜드’.\n재즈 피아니스트 ‘세바스찬’(라이언 고슬링)과 배우 지망생 ‘미아’(엠마 스톤),\n인생에서 가장 빛나는 순간 만난 두 사람은\n미완성인 서로의 무대를 만들어가기 시작한다.")
    ]

}

