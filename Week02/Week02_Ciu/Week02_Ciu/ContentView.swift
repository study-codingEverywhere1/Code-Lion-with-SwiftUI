//
//  ContentView.swift
//  Week02_Ciu
//
//  Created by 강치우 on 11/27/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var columns = Array(repeating: GridItem(.flexible(), spacing: 10), count: 1)
    @State private var movieRec: [movieModel] = movieDatas.recommendation
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // 최상단, 메뉴 타이틀 서치바
                HStack {
                    Button {
                        // 버튼 눌렀을 때 기능
                    } label: {
                        // 메뉴 버튼을 캡슐로 만듬
                        VStack(spacing: 5) {
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 25, height: 3)
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 25, height: 3)
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 25, height: 3)
                        }
                    }
                    
                    Spacer()
                    
                    Text("MOVIES")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Button {
                        // 서치 바 기능
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 23, weight: .semibold))
                    }
                    
                    
                }
                .foregroundStyle(.white)
                .padding(.horizontal)
                
                VStack {
                    ForEach(movieRec) { movie in
                        GridView(columns: $columns, movie: movie)
                    }
                    .padding(.vertical, 3)
                }
                .padding(.top, 30)
            }
            .background(.black)
        }
    }
}

#Preview {
    ContentView()
}
