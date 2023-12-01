//
//  DetailView.swift
//  Week03_Ciu
//
//  Created by 강치우 on 12/1/23.
//

import SwiftUI

struct DetailGridView: View {
    
    @State private var ButtonOnOff: Bool = false
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame(width: 150,height: 180)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .foregroundStyle(.bg)
                
                VStack(spacing: -20) {
                    Image("nike1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 230)
                        .rotationEffect(Angle(radians: 5.6))
                        .shadow(color: .black, radius: 10)
                        .padding(.trailing, 50)
                    HStack(spacing: 35) {
                        HStack {
                            Image(systemName: "star.fill")
                            Text("4.8")
                        }
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        
                        Button {
                            ButtonOnOff.toggle()
                        } label: {
                            if ButtonOnOff == false {
                                Image(systemName: "heart")
                                    .frame(width: 40, height: 40)
                                    .foregroundStyle(.white)
                                    .background(Color(.button))
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            } else {
                                Image(systemName: "heart.fill")
                                    .frame(width: 40, height: 40)
                                    .foregroundStyle(.red)
                                    .background(.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                        .shadow(color: .gray, radius: 0.9)
                    }
                }
            }
            
            VStack {
                Text("Nike Air Force")
                    .foregroundStyle(.white)
                Text("$180")
                    .foregroundStyle(.gray)
            }
            .fontWeight(.bold)
            .fontDesign(.serif)
        }
    }
}

#Preview {
    DetailGridView()
}
