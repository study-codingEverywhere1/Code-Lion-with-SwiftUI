//
//  SizeView.swift
//  Week03_NikeView
//
//  Created by 정정욱 on 12/10/23.
//

import SwiftUI

struct SizeView: View {
    // 화면 그리드형식으로 채워줌
    let sizeLayout: [GridItem] = [
        GridItem(.flexible(maximum: 80))
    ]
    
    let sizeTitle: [String] = Array(stride(from: 6, through: 10, by: 0.5)).map { "\($0)" }

    
    var body: some View {
        ScrollView(.horizontal) {
            // 가로(행) 3줄 설정
            LazyHGrid(rows: sizeLayout, spacing: 20) {
                
                Rectangle()
                    .cornerRadius(20)
                    .foregroundColor(.white)
                    .frame(width: 70, height: 70)
                    .overlay {
                        Text("Sizes")
                    }
                
                ForEach(sizeTitle, id: \.self) { item  in
                    VStack {
                        Rectangle()
                            .cornerRadius(20)
                            .foregroundColor(Color(hex: "#cb935c"))
                            .frame(width: 70, height: 70)
                            .overlay {
                                Text(item)
                                    .foregroundColor(Color.white)
                            }
                    }
                }
            }
        } //  ScrollView
    }
}

#Preview {
    SizeView()
}
