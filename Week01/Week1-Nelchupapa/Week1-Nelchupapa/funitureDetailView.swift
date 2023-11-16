//
//  funitureDetailView.swift
//  Week1-Nelchupapa
//
//  Created by 백대홍 on 11/16/23.
//

import SwiftUI

struct funitureDetailView: View {
    var furniture: Furniture
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(furniture.image)
                .resizable()
                .frame(width: 200, height: 200)
            VStack(alignment:.leading, spacing: 16) {
                Text(furniture.category)
                Text(furniture.title)
                    .font(.title2)
                    .bold()
                HStack {
                    ForEach(0..<furniture.star) { _ in
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 10, height: 10)
                            .foregroundColor(.yellow)
                    }
                }
                Text(furniture.description)
                    .font(.caption2)
                
                Text("Price: $\(furniture.price)")
                    .bold()
                
                
            }
        }
        .navigationTitle("Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    funitureDetailView(furniture: Furniture(
        title: "Minimalist Chair",
        category: "Office",
        image: "sofa",
        description: "Amazing stylish in multiple colors choice we have for.\nMost selling item of this year..",
        star: 5,
        price: 120))
}
