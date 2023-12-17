//
//  ContentView.swift
//  Week3_Seon
//
//  Created by 정인선 on 12/3/23.
//

import SwiftUI

struct MainView: View {
    
    @State private var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    var products = NikeModel.modelData

    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                MenuCell()
                CategoryCell()
                
                ScrollView {
                    Spacer()
                        .frame(height: 30)
                    LazyVGrid(columns: columns, spacing: 40) {
                        ForEach(1...products.count, id: \.self) { idx in
                            if idx % 2 == 1 {
                                productCell(productData: products[idx-1])
                            } else {
                                productCell(productData: products[idx-1])
                                    .offset(
                                        y: 40
                                    )
                            }
                        }
                    }
                }
                .scrollIndicators(.hidden)
            }
            .ignoresSafeArea()
            .padding([.top, .horizontal])
        }
        .background(Color(red: 0.168, green: 0.132, blue: 0.122))
    }
}

#Preview {
    MainView()
}
