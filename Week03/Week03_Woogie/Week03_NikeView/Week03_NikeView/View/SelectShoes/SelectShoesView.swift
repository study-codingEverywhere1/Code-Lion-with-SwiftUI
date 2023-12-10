//
//  SelectShoesView.swift
//  Week03_NikeView
//
//  Created by 정정욱 on 12/10/23.
//

import SwiftUI

struct SelectShoesView: View {
    var shoes: Shoes = Shoes(Image: "Shoes1", name: "조던1 다크모카", price: "471,000원")
    
    init(shoes: Shoes) {
        self.shoes = shoes
    }
    
    var body: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading, spacing: 10){
                HStack(spacing: 120){
                    Text(shoes.name)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                        .lineLimit(0) // 또는 .lineLimit(0)
                    ZStack {
                        Rectangle()
                            .frame(width: 40, height: 40)
                            .cornerRadius(10)
                            .foregroundColor(.pink)
                            .opacity(0.3)
                            .shadow(color: Color.black.opacity(0.6), radius: 5, x: 0, y: 2)
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 15, height: 13)
                            .foregroundColor(.pink)
                    }
                }
                
                HStack{
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 15,height: 15)
                        .foregroundColor(.yellow)
                    Text("4.8")
                        .font(.subheadline)
                    Text("reviews")
                        .font(.subheadline)
                }
                .zIndex(1) // VStack의 우선순위를 높임
            
            }
            .padding()
    
            ZStack{
                Rectangle()
                    .frame(width: 300,height: 290)
                    .cornerRadius(50)
                    .foregroundColor(Color(hex: "#fae1ce"))
                    .offset(x: 50)
                Image(shoes.Image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 370)
                    .rotationEffect(Angle(degrees: 55))  // 45도로 기울임
                    .scaleEffect(x: -1, y: 1)  // 좌우 반전 효과
                    .offset(x: 10,y:-45)
                
            }
            .overlay {
        
                VStack(alignment:.leading, spacing: 40){
                    Text(shoes.price)
                        .font(.title2)
                        .bold()
                    
                    Text("1 Color")
                    Spacer()
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 60,height: 70)
                            .cornerRadius(20)
                            .foregroundColor(Color(hex: "#cb935c"))
                        Image(shoes.Image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60)
                            .rotationEffect(Angle(degrees: 35))  // 45도로 기울임
                            .scaleEffect(x: -1, y: 1)  // 좌우 반전 효과
                            .offset(x: -8,y:-9)
                        
                    }
                    .offset(x: -5,y:-110)
                    
                    
                    
                }
                .offset(x: -115, y: -5) // 우측 대형 이미지 기준
            }
            SizeView()
        }
        
        // footer
        CartView()
    }
}

#Preview {
    SelectShoesView(shoes: Shoes(Image: "Shoes1", name: "조던1 다크모카", price: "471,000원"))
}
