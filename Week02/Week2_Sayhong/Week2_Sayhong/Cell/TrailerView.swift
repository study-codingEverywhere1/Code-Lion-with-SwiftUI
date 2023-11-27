//
//  TrailerView.swift
//  Week2_Sayhong
//
//  Created by 홍세희 on 2023/11/28.
//

import SwiftUI

struct TrailerView: View {
    var body: some View {
        ZStack {
            ZStack(alignment: .bottom) {
                Image("roofi")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 340, height: 180)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 60, height: 10)))
                    .overlay(RoundedRectangle(cornerSize: CGSize(width: 60, height: 50)).stroke(Color.white, lineWidth: 3))
                Text("OFFICIAL TRAILER")
                    .foregroundStyle(.white)
            }
            Image(systemName: "play.circle")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    TrailerView()
        .padding(200)
        .background(Color.black)
 
}

