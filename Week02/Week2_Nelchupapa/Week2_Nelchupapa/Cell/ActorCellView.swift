//
//  ActorCellView.swift
//  Week2_Nelchupapa
//
//  Created by 백대홍 on 11/28/23.
//


import SwiftUI

struct ActorCellView: View {
    var actors: Actor
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(Array(zip(actors.actorname, actors.actorpic)), id: \.0) { name, pic in
                    VStack {
                        Image(pic)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                        Text(name)
                            .font(.headline)
                            
                    }
                    .frame(width: 150, height: 180)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 2))
                    
                }
            }
        }
        .padding()
    }
}

#Preview {
    ActorCellView(actors: Actor(actorname: ["robert", "scarlet"], actorpic: ["robert", "scarlet"]))
}



/**
 - Zip 사용법 다시
 - https://gyuios.tistory.com/168
 */
