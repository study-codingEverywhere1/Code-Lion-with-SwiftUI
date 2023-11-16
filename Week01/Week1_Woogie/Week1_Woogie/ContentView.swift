//
//  ContentView.swift
//  Week1_Woogie
//
//  Created by 정정욱 on 11/16/23.
//

import SwiftUI

struct ContentView: View {
    @State var inputText: String = ""
    
   
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack {
                    HStack(spacing: 130) {
                        VStack(alignment: .leading){
                            Text("Best Furniture For")
                                .bold()
                                .font(.title3)
                            Text("Your Room")
                                .bold()
                                .font(.title3)
                        }
                        
                        Image("git")
                            .resizable() // 원본 이미지가 너무 크기 때문에, 최대한 화면사이즈에서 크게 만든다음
                            .scaledToFill()
                            .frame(width: 45, height: 45) // 파란색 선 까지가 이미지 범위
                            .cornerRadius(150)
                    }
                    
                    ZStack(){
                        Rectangle()
                            .frame(width: 350, height: 45)
                            .foregroundColor(
                                Color(.systemGray6)
                            )
                            .cornerRadius(15)
                        HStack(spacing: 120){
                            HStack(){
                                Image(systemName: "magnifyingglass")
                                Text("Search furniture..")
                            }
                            HStack(){
                                Image(systemName: "pencil.line")
                            }
                            
                        }
                        TextField("", text: $inputText)
                            .frame(width: 250, height: 45)
                        
                    }
                    MainView()
                  
                  
                }
            }
        }
    }
}

struct MainView : View {
    let bestSellerColumns: [GridItem] = [
        //GridItem을 담을 수 있는 배열 생성
        // .flexible : 크기를 화면 프레임에 유연하게 늘렸다 줄었다 할 수 있게 설정
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    
    let title: [String] = ["chair", "Lamp", "Table", "Sofa"]
    // 화면 그리드형식으로 채워줌
    let titleGridLayout: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
    ]
    @State var titleButtonTapped : Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            Image("main")
                .resizable()
                .scaledToFit()
                .frame(width: 350)
            
            VStack {
                LazyHGrid(rows: titleGridLayout, spacing: 15) {
                    ForEach(title, id: \.self) { item  in
                        ZStack {
                            Rectangle()
                                .foregroundColor( titleButtonTapped ?  .yellow : Color(.systemGray5))
                                .onTapGesture {
                                    titleButtonTapped.toggle()
                                }
                                .frame(width: 70, height: 40)
                                .cornerRadius(10)
                            
                            Text(item)
                                .foregroundColor(Color.black)
                                .font(.callout)
                            
                        }
                    }
                }
                
                LazyVGrid(
                    columns: bestSellerColumns, // 2열
                    alignment: .center,
                    spacing: 6,
                    pinnedViews: [.sectionHeaders]) {
                        // sectionHeaders로 설정해서 헤더는 화면을 내려도 고정됨 pinnedViews는 섹션을 나누기 위해 사용
                        // Section 1
                        
                        Section(header:
                                    HStack(alignment: .lastTextBaseline){
                                Text("BestSeller")
                                    .font(.title2)
                                    .bold()
                                Spacer()
                                Text("View all")
                                .font(.caption)
                                
                        }.padding(EdgeInsets(top: 15, leading: 20, bottom: 5, trailing: 20))
                                
                        ) {
                            ForEach(0..<10) { index in
                                VStack(){
                                    
                                    Image("item")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 120)
            
                                   
                                    
                                    VStack(alignment: .leading, spacing: 3){
                                        Text("Office")
                                        Text("Minimalist Chair")
                                        HStack(spacing: 1){
                                            Image(systemName: "star.fill")
                                                .resizable()
                                                .frame(width: 10, height: 10)
                                                .foregroundColor(Color(.yellow))
                                            Image(systemName: "star.fill")
                                                .resizable()
                                                .frame(width: 10, height: 10)
                                                .foregroundColor(Color(.yellow))
                                            Image(systemName: "star.fill")
                                                .resizable()
                                                .frame(width: 10, height: 10)
                                                .foregroundColor(Color(.yellow))
                                            Image(systemName: "star.fill")
                                                .resizable()
                                                .frame(width: 10, height: 10)
                                                .foregroundColor(Color(.yellow))
                                            Image(systemName: "star.fill")
                                                .resizable()
                                                .frame(width: 10, height: 10)
                                                .foregroundColor(Color(.yellow))
                                            
                                        }
                                        HStack(spacing:50) {
                                            Text("$20")
                                                .font(.title3)
                                            Rectangle()
                                                .frame(width: 35, height: 35)
                                                .cornerRadius(10)
                                                .overlay {
                                                    Image(systemName: "lock.fill")
                                                        .resizable()
                                                        .frame(width: 15, height: 20)
                                                        .foregroundStyle(Color(.white))
                                                }
                                                
                                        }
                                    }
                                    
                                    
                                    
                                }
                               
                            }
                        } //: Section 1
                    }
                
                
                
                Spacer()
                
                
            }
        }
    }
}
#Preview {
    ContentView()
}
