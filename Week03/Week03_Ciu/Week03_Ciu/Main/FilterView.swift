//
//  FilterView.swift
//  Week03_Ciu
//
//  Created by 강치우 on 12/1/23.
//

import SwiftUI

struct FilterView: View {
    
    @State private var text = ""
    
    var body: some View {
        HStack(spacing: 0) {
            
            Spacer()
            
            HStack {
                VStack {
                    Text("Shoes")
                        .padding(.top , 10)
                    
                    Rectangle()
                        .frame(width: 50, height: 2)
                }
                
                Text("Clothing")
                    .foregroundStyle(.gray)
                    .padding()
            }
            .font(.system(size: 15, weight: .semibold, design: .default))
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            
            
            Spacer()
            
            Image(systemName: "slider.horizontal.3")
                .foregroundStyle(.white)
            
            Spacer()
            
            HStack(spacing: 5) {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.white)
                TextField(text: $text) {
                    Text("Search...")
                        .font(.subheadline)
                        .fontDesign(.default)
                        .foregroundStyle(Color(.systemGray4))
                }
            }
            .frame(width: 90, height: 40)
            .padding(.horizontal, 15)
            .background(Color.bg)
            // MARK: = 코너래디우스 디테일
            .clipShape(
                .rect(topLeadingRadius: 5.0, bottomLeadingRadius: 25.0, bottomTrailingRadius: 20.0, topTrailingRadius: 20.0)
            )
            .padding()
        }
        .background(.black)
    }
}

#Preview {
    FilterView()
}
