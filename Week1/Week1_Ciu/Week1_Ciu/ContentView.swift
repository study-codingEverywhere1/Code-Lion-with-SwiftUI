//
//  ContentView.swift
//  Week1_Ciu
//
//  Created by 강치우 on 11/16/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // 최상단
                HStack(spacing: 10) {
                    Text("Best Furniture For \nYour Room")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                .padding()
                
                // 서치바
                HStack(spacing: 8) {
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(.gray)
                    
                    TextField("Search furniture..", text: $searchText)
                        .font(.subheadline)
                    
                    Image(systemName: "hourglass.tophalf.fill")
                        .resizable()
                        .frame(width: 17, height: 23)
                }
                .padding(.horizontal, 15)
                .padding(.vertical, 15)
                .frame(width: 350, height: 40)
                .background(.ultraThinMaterial, in: .rect(cornerRadius: 13))
                
                Image("image1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                // 버튼 탭
                HStack(spacing: 8) {
                    
                    Button {
                        
                    } label: {
                        Text("Chair")
                    }
                    .font(.callout)
                    .fontWeight(.semibold)
                    .frame(width: 80, height: 40)
                    .foregroundStyle(.black)
                    .background(.yellow)
                    .cornerRadius(10)
                    
                    
                    Button {
                        
                    } label: {
                        Text("Lamp")
                    }
                    .font(.callout)
                    .fontWeight(.semibold)
                    .frame(width: 80, height: 40)
                    .foregroundStyle(.gray)
                    .background(Color(.systemGray5))
                    .cornerRadius(10)
                    
                    Button {
                        
                    } label: {
                        Text("Table")
                    }
                    .font(.callout)
                    .fontWeight(.semibold)
                    .frame(width: 80, height: 40)
                    .foregroundStyle(.gray)
                    .background(Color(.systemGray5))
                    .cornerRadius(10)
                    
                    Button {
                        
                    } label: {
                        Text("Sofa")
                    }
                    .font(.callout)
                    .fontWeight(.semibold)
                    .frame(width: 80, height: 40)
                    .foregroundStyle(.gray)
                    .background(Color(.systemGray5))
                    .cornerRadius(10)
                }
                .padding()
                
                // 베스트 셀러
                HStack(spacing: 10) {
                    Text("Best Seller")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Text("View all")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.systemGray))
                }
                .padding(.horizontal, 25)
                
                HStack(spacing: 8) {
                    Image("chair")
                    
                    Image("chair2")
                }
                
                // $120
                HStack {
                    VStack(alignment: .leading) {
                        Text("office")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundStyle(.gray)
                        NavigationLink(destination: ChairView(), label: {
                            Text("Minimallst Chair")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundStyle(.black)
                        })
                        
                        HStack(spacing: 0) {
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 13, height: 13)
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 13, height: 13)
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 13, height: 13)
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 13, height: 13)
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 13, height: 13)
                        }
                        .foregroundStyle(.yellow)
                        
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("Living Room")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundStyle(.gray)
                        
                        
                        Text("Minimallst Chair")
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        HStack(spacing: 0) {
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 13, height: 13)
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 13, height: 13)
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 13, height: 13)
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 13, height: 13)
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 13, height: 13)
                        }
                        .foregroundStyle(.yellow)
                    }
                }
                .padding(.horizontal, 35)
                // $120
                HStack {
                    HStack() {
                        Text("$120")
                            .font(.headline)
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "handbag.fill")
                        }
                        .frame(width: 50, height: 50)
                        .foregroundStyle(.white)
                        .background(.primary)
                        .clipShape(.rect(cornerRadius: 15))
                        .padding(.leading, 30)
                    }
                    
                    Spacer()
                    
                    HStack() {
                        Text("$120")
                            .font(.headline)
                            .padding(.trailing, 35)
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "handbag.fill")
                        }
                        .frame(width: 50, height: 50)
                        .foregroundStyle(.white)
                        .background(.primary)
                        .clipShape(.rect(cornerRadius: 15))
                        .padding(.trailing, -5)
                    }
                }
                .padding(.horizontal, 35)
            }
        }
    }
}

#Preview {
    ContentView()
}
