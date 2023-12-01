//
//  DetailView.swift
//  Week03_Ciu
//
//  Created by 강치우 on 12/1/23.
//

import SwiftUI

struct DetailGridView: View {
    var body: some View {
            ZStack {
                Rectangle()
                    .frame(width: 150,height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .foregroundStyle(.bg)
                
                VStack(spacing: -20) {
                    Image("nike1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 190)
                        .rotationEffect(Angle(radians: 5.6))
                        .padding(.trailing, 40)
                    HStack(spacing: 35) {
                        HStack {
                            Image(systemName: "star.fill")
                            Text("4.8")
                        }
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
            
                        Image(systemName: "heart")
                            .frame(width: 30, height: 30)
                            .foregroundStyle(.white)
                            .background(.gray)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                .padding(.bottom, 130)
            }
        }
    }

#Preview {
    DetailGridView()
}
