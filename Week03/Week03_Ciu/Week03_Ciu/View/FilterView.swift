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
                Text("Shoes")
                
                Text("Clothing")
                    .foregroundStyle(.bg)
                    .padding()
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            
            
            Spacer()
            
            Image(systemName: "square.grid.3x1.below.line.grid.1x2")
                .foregroundStyle(.white)
            
            Spacer()
            
            HStack(spacing: 15) {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.white)
                TextField(text: $text) {
                    Text("Search...")
                        .font(.subheadline)
                        .foregroundStyle(Color(.systemGray4))
                }
            }
            .frame(width: 90, height: 40)
            .padding(.horizontal, 15)
            .background(Color.bg)
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
