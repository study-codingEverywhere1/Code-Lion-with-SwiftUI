//
//  searchView.swift
//  Week1-Nelchupapa
//
//  Created by 백대홍 on 11/16/23.
//

import SwiftUI

struct searchView: View {
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.secondary)
            Text("Search furniture..")
                .foregroundColor(.secondary)
                .padding(.trailing, 134)
            Image(systemName: "line.3.horizontal.decrease.circle")
                .padding(.trailing)
        }
        .padding(.leading, 12)
        
        .padding(.vertical, 12)
        .frame(height: 46, alignment: .topLeading)
        .background(Color.secondary)
        .shadow(radius: 10)
        .cornerRadius(4)
    }
}

#Preview {
    searchView()
}
