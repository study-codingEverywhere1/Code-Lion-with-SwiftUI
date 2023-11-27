//
//  MovieTitleDateView.swift
//  Week2_Sayhong
//
//  Created by 홍세희 on 2023/11/28.
//

import SwiftUI

struct MovieTitleDateView: View {
    var title: String
    var date: String
    
    var body: some View {
        //TODO: 간격 조정
        VStack(alignment: .leading, spacing: 50) {
            Text(title)
                .modifier(MovieTitleText(size: 20))
            Text(date)
                .modifier(DateText(size: 20))
        }
        .padding()
        .frame(width: 190, height: 200)
    }
}

#Preview {
    MovieTitleDateView(title: "rkskekfkf", date: "MAY 6, 2021")
        .background {
            Color.black
        }
}

