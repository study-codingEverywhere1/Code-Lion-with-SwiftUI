//
//  ShoesCell.swift
//  Week03_NikeView
//
//  Created by 정정욱 on 12/10/23.
//

import SwiftUI

struct ShoesCell: View {
    @State var isSelected: Bool = false
    var shoes: Shoes = Shoes(Image: "Shoes1", name: "조던1 다크모카", price: "471,000원")
    
    init(shoes: Shoes) {
        self.shoes = shoes
    }
    
    var body: some View {
        VStack {
            ZStack{
                Rectangle()
                    .frame(width: 150,height: 180)
                    .cornerRadius(20)
                    .foregroundColor(Color(hex: "#513a24"))
                Image(shoes.Image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180)
                    .rotationEffect(Angle(degrees: 45))  // 45도로 기울임
                    .scaleEffect(x: -1, y: 1)  // 좌우 반전 효과
                    .offset(x: -20,y:-45)
                HStack(spacing: 43){
                    HStack{
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 15,height: 15)
                        Text("4.8")
                            .font(.subheadline)
                    }
                    .foregroundColor(.white)
                    Button(action: {
                        isSelected.toggle()
                    }) {
                        ZStack {
                            Rectangle()
                                .frame(width: 30, height: 30)
                                .cornerRadius(10)
                                .foregroundColor(isSelected ? .white : Color(hex: "#513a24"))
                                .shadow(color: Color.black.opacity(0.6), radius: 5, x: 0, y: 2)
                            Image(systemName: isSelected ? "heart.fill" : "heart")
                                .resizable()
                                .frame(width: 13, height: 12)
                                .foregroundColor(isSelected ? .pink : .white)
                        }
                    }
                    
                    
                }
                .offset(y:65)
            }
            
            Text(shoes.name)
                .foregroundStyle(Color.white)
            Text(shoes.price)
                .foregroundStyle(Color.gray)
        }
    }
}

#Preview {
    ShoesCell(shoes: Shoes(Image: "Shoes1", name: "조던1 다크모카", price: "471,000원"))
}
