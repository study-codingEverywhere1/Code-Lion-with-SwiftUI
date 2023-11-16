//
//  ContentView.swift
//  Week1-Nelchupapa
//
//  Created by 백대홍 on 11/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 16) {
                headCellView()
                    .padding()
                ScrollView {
                    searchView()
                    adView()
                        .padding(.vertical, 32)
                    selectionView()
                    HStack {
                        Text("Best Seller")
                            .bold()
                        Spacer()
                        Text("View all")
                            .font(.subheadline)
                            .foregroundStyle(Color.secondary)
                    }
                    .padding(.top,8)
                    .padding(.bottom, 16)
                    ScrollView(.horizontal) {
                        HStack(spacing: 16) {
                            ForEach(furnituresData) { furniture in
                                bestsellerView(furniture: furniture)
                            }
                        }
                    }
                    .scrollIndicators(.hidden)
                }
                .padding()
                .scrollIndicators(.hidden)
            }
        }
        .accentColor(.black)
    }
}

#Preview {
    ContentView()
}
