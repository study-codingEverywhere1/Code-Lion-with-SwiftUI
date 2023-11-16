//
//  bestsellerView.swift
//  Week1-Nelchupapa
//
//  Created by 백대홍 on 11/16/23.
//

import SwiftUI

struct bestsellerView: View {
    var furniture: Furniture
    var body: some View {
        NavigationLink(destination: funitureDetailView(furniture: furniture)) {
            VStack {
                Image(furniture.image)
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                VStack(alignment:.leading) {
                    Text(furniture.category)
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text(furniture.title)
                        .font(.subheadline)
                        .bold()
                    
                    HStack {
                        ForEach(0..<furniture.star) { _ in
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 10, height: 10)
                                .foregroundColor(.yellow)
                        }
                        
                        
                    }
                    .padding(.bottom)
                    
                    Text("$\(furniture.price)")
                        .bold()
                        .font(.caption)
                    
                }
                .padding()
            }
            .frame(width: 150, height: 280)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 0.2))
        }
    }
}

#Preview {
    bestsellerView(furniture: Furniture(
        title: "Minimalist Chair",
        category: "Office",
        image: "라바",
        description: "Amazing stylish in multiple colors choice we have for.\nMost selling item of this year..",
        star: 5,
        price: 120))
}
