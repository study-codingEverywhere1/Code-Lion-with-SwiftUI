//
//  selectionView.swift
//  Week1-Nelchupapa
//
//  Created by 백대홍 on 11/16/23.
//

import SwiftUI

struct selectionView: View {
    let items = ["Chair", "Lamp", "Table", "Sofa", "ETC"]
    @State private var selected = "Chair"
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 16) {
                ForEach(items, id: \.self) { item in
                        RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(selected == item ? .yellow : .gray)
                        .frame(width: 80, height: 50)
                        .overlay(
                            Text(item)
                                .foregroundColor(.black)
                                .bold()
                                .font(.caption)
                            )
                        .onTapGesture {
                            selected = item
                        }
                }
            }
            
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    selectionView()
}
