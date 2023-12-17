//
//  CategoryCell.swift
//  Week3_Seon
//
//  Created by 정인선 on 12/3/23.
//

import SwiftUI

struct CategoryCell: View {
    
    @State var search: String = ""
    
    var body: some View {
        HStack(spacing: 30) {
            Picker(selection: .constant(1), label: Text("")) {
            Text("Shoes").tag(1)
            Text("Clothing").tag(2)
            }
            .pickerStyle(.segmented)
            
            Button { } label: {
                Image(systemName: "slider.horizontal.3")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(.white)
            }
            
            TextField("Search...", text: $search)
                .padding(EdgeInsets(top: 5, leading: 40, bottom: 5, trailing: 0))
                .background(Color(red: 0.256, green: 0.218, blue: 0.189))
                .clipShape(.rect(topLeadingRadius: 5, bottomLeadingRadius: 20, bottomTrailingRadius: 20, topTrailingRadius: 20))
                .overlay(
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(.white)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 8)
                )
        }
    }
}

#Preview {
    ZStack {
        Color.gray
        CategoryCell()
    }
}
