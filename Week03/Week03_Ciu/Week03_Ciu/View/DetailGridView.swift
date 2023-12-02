//
//  DetailView.swift
//  Week03_Ciu
//
//  Created by 강치우 on 12/1/23.
//

import SwiftUI

struct DetailGridView: View {
    
    @State private var ButtonOnOff: Bool = false
    var nike: Nike
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Rectangle()
                    .frame(width: 160,height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .foregroundStyle(.bg)
                    .shadow(color: .gray, radius: 1)
                
                VStack(spacing: -25) {
                    Image(nike.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 190)
                        .rotationEffect(Angle(radians: 5.5))
                        .shadow(color: .black, radius: 10)
                        .padding(.trailing, 60)
                    HStack(spacing: 35) {
                        HStack {
                            Image(systemName: "star.fill")
                            Text(nike.star)
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
                    .padding()
                }
            }
            
            VStack(spacing: 10) {
                Text(nike.name)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                Text("$ \(nike.price)")
                    .foregroundStyle(.gray)
            }
            .fontWeight(.bold)
            .fontDesign(.serif)
            .padding()
        }
    }
}

#Preview {
    DetailGridView(nike: Nike(name: "Nike Air Force", price: 180, star: "4.8", image: "nike1"))
}
