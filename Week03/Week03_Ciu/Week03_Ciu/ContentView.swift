//
//  ContentView.swift
//  Week03_Ciu
//
//  Created by 강치우 on 12/1/23.
//

import SwiftUI

struct ContentView: View {
    
    var columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 2)
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                TopView()
                
                FilterView()
                
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(0..<4) { index in
                            DetailGridView()
                        }
                    }
                }
            }
            .background(.black)
        }
    }
}

#Preview {
    ContentView()
}
