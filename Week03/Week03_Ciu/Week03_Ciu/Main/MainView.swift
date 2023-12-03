//
//  ContentView.swift
//  Week03_Ciu
//
//  Created by 강치우 on 12/1/23.
//

import SwiftUI

struct MainView: View {
    
    @State private var columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 2)
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                // MARK: - Header
                HeaderView()
                
                // MARK: - Filter
                FilterView()
                
                // MARK: - Grid
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 0) {
                        ForEach(0..<nikeData.count, id: \.self) { nike in
                            
                            // MARK: = 짝수 배열이면 오프셋 y를 -40만큼 내림.
                            if nike % 2 == 1 {
                                DetailGridView(nike: nikeData[nike])
                                
                            } else {
                                DetailGridView(nike: nikeData[nike])
                                    .offset(y: -40)
                            }
                        }
                        .padding(.bottom, -20)
                    }
                    
                }
            }
            .background(.black)
        }
    }
}

#Preview {
    MainView()
}
