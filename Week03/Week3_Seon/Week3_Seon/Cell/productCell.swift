//
//  productCell.swift
//  Week3_Seon
//
//  Created by 정인선 on 12/3/23.
//

import SwiftUI

struct productCell: View {
    
    @State var isLike: Bool = false
    let productData: NikeModel
    var rate: String {
        return String(format: "%.1f", self.productData.rate)
    }
    var price: String {
        return String(format: "%.1f", self.productData.price)
    }
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                    .frame(height: 210)
                    .foregroundStyle(Color(red: 0.245, green: 0.211, blue: 0.189))
                
                VStack {
                    Image(productData.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 190)
                        .rotationEffect(.degrees(-50))
                        .shadow(radius: 10)
                        .padding(.leading, -25)
                    
                    HStack(alignment: .center) {
                        Image(systemName: "star.fill")
                            .foregroundStyle(.white)
                        
                        Text(rate)
                            .foregroundStyle(.white)
                            .bold()
                            .padding(.trailing, 40)
                        
                        Button {
                            isLike.toggle()
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                                    .frame(width: 40, height: 40)
                                    .foregroundStyle(isLike ? Color.white : Color(red: 0.245, green: 0.211, blue: 0.189))
                                    .contrast(0.7)
                                Image(systemName: isLike ? "heart.fill" : "heart")
                                    .foregroundStyle(isLike ? Color.pink : Color.white)
                            }
                        }
                        
                        
                    }
                    .padding(.top, 50)
                }
            }
            
            
            Text(productData.productName)
                .foregroundStyle(.white)
                .bold()
            Text("$"+price)
                .fontWeight(.heavy)
                .foregroundStyle(Color(red: 0.593, green: 0.552, blue: 0.541))
                .bold()
        }
    }
}

#Preview {
    ZStack {
        Color.black
        
        productCell(productData: NikeModel(productName: "ReactFrenzy", rate: 4.0, price: 160, image: "Air_stussy"))
    }
}
