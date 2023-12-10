//
//  MainTopView.swift
//  Week03_NikeView
//
//  Created by 정정욱 on 12/10/23.
//

import SwiftUI

struct MainTopView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack(spacing : 280){
            
                Image("nike")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)

                
                Button {
                    print()
                } label: {
                    VStack(alignment: .trailing, spacing: 2){
                        Rectangle()
                            .frame(width: 20, height: 5)
                            .foregroundColor(.white)
                        Rectangle()
                            .frame(width: 10, height: 5)
                            .foregroundColor(.white)
                    }
                }

            }
            Text("Collections")
                .font(.title)
                .bold()
                .foregroundColor(.white)
            
            HStack(spacing: 50){
                Button {
                    print()
                } label: {
                    VStack{
                        Text("Shoes")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                    
                }
                
                Button {
                    print()
                } label: {
                    Text("Clothing")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                }
                
                Button {
                    print()
                } label: {
                    Image(systemName: "list.clipboard")
                        .foregroundColor(.white)
                    
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 35)
                    // 각각 둥글게 만드는 방법
                        .clipShape(
                            .rect(topLeadingRadius: 10.0,
                                  bottomLeadingRadius: 30.0,
                                  bottomTrailingRadius: 20.0, topTrailingRadius: 20.0
                                 )
                        )
                        .foregroundColor(Color(hex: "#513a24"))
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.white)
                        Text("search...")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                }
               

            }
          
        }
        
        .background(
            Color(hex: "#2a1f1f")
        )
    }
}

#Preview {
    MainTopView()
}
