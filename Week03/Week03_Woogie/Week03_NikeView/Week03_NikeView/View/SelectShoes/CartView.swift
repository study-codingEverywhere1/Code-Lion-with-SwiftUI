//
//  CartView.swift
//  Week03_NikeView
//
//  Created by 정정욱 on 12/10/23.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 400, height: 120)
                .foregroundColor(Color(hex: "#513a24"))
                .clipShape(
                    .rect(topLeadingRadius: 40.0,
                          bottomLeadingRadius: 90.0,
                          bottomTrailingRadius: 20.0, topTrailingRadius: 30.0
                         )
                )
            HStack(spacing: 40){
                Image(systemName: "lasso.badge.sparkles")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
                ZStack {
                    Rectangle()
                        .frame(width: 220, height: 70)
                        .cornerRadius(30)
                        .foregroundColor(Color(hex: "#cb935c"))
                    HStack{
                        Image(systemName: "cart")
                            .foregroundColor(Color.white)
                        Text("Add to Bag")
                            .foregroundColor(Color.white)
                    }
                }
            }
            
        }
    }
}

#Preview {
    CartView()
}
