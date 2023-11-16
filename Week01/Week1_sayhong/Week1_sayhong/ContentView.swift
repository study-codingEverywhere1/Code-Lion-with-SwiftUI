//
//  ContentView.swift
//  Week1_sayhong
//
//  Created by 홍세희 on 2023/11/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Best Furniture For")
                        Text("Your Room")
                    }
                    .font(.system(size: 28))
                    .bold()
                    Spacer()
                    Image("roofi")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80)
                        .clipShape(Circle())
                }
                //TODO: searchbar 넣기
                RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                    .fill(Color.gray)
                    .frame(height: 60)
                ZStack {
                    RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                        .fill(Color.black)
                        .frame(height: 150)
                    HStack(spacing: 100) {
                        VStack(alignment: .leading) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 18)
                                    .fill(Color.yellow)
                                    .frame(width: 80, height: 40)
                                Text("20% Off")
                                    .font(.system(size: 15))
                            }
                            VStack(alignment: .leading) {
                                Text("Best deals on")
                                Text("Chair")
                            }
                            .foregroundStyle(Color.white)
                            .bold()
                            
                            Text("")
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                HStack {
                                    Text("Check it out ")
                                    Image(systemName: "arrow.forward")
                                }.foregroundStyle(Color.white)
                            }).font(.system(size: 10))
                        }
                        
                        Image("chair")
                            .resizable()
                            .frame(width: 100, height: 100)
                    }
                }
                //TODO:
                RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                    .fill(Color.yellow)
                    .frame(height: 60)
                HStack(spacing: 180) {
                    Text("Best Seller")
                        .font(.system(size: 25))
                    Button(action: {}, label: {
                        Text("View all")
                            .foregroundStyle(.gray)
                    })
                }
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(0..<5) { _ in
                            productCellView()
                        }
                    }
                }
                .frame(maxHeight: .infinity)
                .statusBarHidden()
            }
            .padding()
        }

    }
}

#Preview {
    ContentView()
}
