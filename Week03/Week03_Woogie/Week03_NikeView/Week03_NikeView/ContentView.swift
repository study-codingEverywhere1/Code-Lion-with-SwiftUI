//
//  ContentView.swift
//  Week03_NikeView
//
//  Created by 정정욱 on 12/10/23.
//

import SwiftUI

struct ContentView: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    let shoesItems = [
        Shoes(Image: "Shoes1", name: "조던1 다크모카", price: "471,000원"),
        Shoes(Image: "Shoes2", name: "조던1 시카고", price: "350,000원"),
        Shoes(Image: "Shoes3", name: "조던1 블리치드 코랄", price: "232,000원"),
        Shoes(Image: "Shoes4", name: "조던1 블랙 앤 럭키 그린", price: "105,000원"),
        Shoes(Image: "Shoes5", name: "조던1 페이턴트 브레드", price: "212,000원"),
        Shoes(Image: "Shoes6", name: "나이키 에어포스 1", price: "151,000원"),
    ]
    
    @State var initPageNumber: Int = 0
    
    @State var stack = NavigationPath() // 초기 설정
    
    
    var body: some View {
        NavigationStack(path: $stack) {
            ScrollView {
                HStack{
                    MainTopView()
                }
                .padding(.bottom, 50)
                LazyVGrid(
                    columns: columns, // 3열
                    alignment: .center,
                    spacing: 6) {
                        ForEach(shoesItems.indices, id: \.self) { index in
                            NavigationLink(
                                destination: SelectShoesView(shoes: shoesItems[index])
                                .navigationBarBackButtonHidden(true) // Hide the default back button
                                .navigationBarItems(leading: CustomBackButton()), // Use a custom back button
                                label: {
                                    ShoesCell(shoes: shoesItems[index])
                                        .frame(height: 300)
                                        .offset(y: index % 2 == 0 ? -40 : 0)
                                }
                            ) // index가 홀수인 경우에만 y축으로 -20만큼 오프셋
                        }
                    }
            }
            .background(
                Color(hex: "#2a1f1f")
            )
        } // NavigationStack End
    }
}


#Preview {
    ContentView()
}
