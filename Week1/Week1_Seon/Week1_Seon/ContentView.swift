//
//  ContentView.swift
//  Week1_Seon
//
//  Created by 정인선 on 11/16/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var furnitureName: String = ""
    var furnitures = ["Chair", "Lamp", "Table", "Sofa"]
    
    var body: some View {
        VStack {
            HStack{
                Text("Best Furniture For Your Room")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Image("White")                    .resizable(capInsets: EdgeInsets())
                    .frame(width: 70, height: 70)
                    .scaledToFit()
                    .clipShape(Circle())
            }
            .padding()
            
            VStack {
                TextField("Search furniture..", text: $furnitureName)
                    .padding()
                    .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.933))
//                    .overlay(
//                        Image(systemName: "magnifyingglass")
//    
//                    )
                    .padding(.horizontal)
                
                Image("mainImage")
                    .resizable()
                    .scaledToFit()
                
                HStack {
                    
                    ForEach(furnitures, id: \.self) { furniture in
                        Button {
                        } label: {
                            Text(furniture)
                        }
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.black)
                        .background( furniture == "Chair" ? .yellow : Color(hue: 1.0, saturation: 0.0, brightness: 0.963))
                        .cornerRadius(15)
                    }
                }
                .padding(.horizontal)
                .padding(.top, 8)
                
                HStack(alignment: .bottom) {
                    Text("Best Seller")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Button {
                    } label: {
                        Text("View all")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                            
                    }
                }
                .padding()
                
                
                HStack {
                    Spacer()
                    VStack(alignment: .leading) {
                        Image("Chair")
                            .resizable()
                            .frame(minWidth: 150, maxWidth: 160, minHeight: 180, maxHeight: .infinity)
                        
                        Text("Office")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundStyle(.gray)
                        
                        Text("Minimalist Chair")
                            .fontWeight(.bold)
                        
                        HStack(spacing: 0) {
                            ForEach(1...5, id:\.self) { count in
                                Image(systemName: "star.fill")
                                    .foregroundStyle(.yellow)
                                    .font(.system(size: 10))
                            }
                            Spacer()
                        }
                     
                        Text("$120")
                            .padding(.vertical, 10)
                       
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Image("Sofa")
                            .resizable()
                            .frame(minWidth: 150, maxWidth: 160, minHeight: 180, maxHeight: .infinity)
                        
                        Text("Living Room")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundStyle(.gray)
                        
                        Text("Minimalist Chair")
                            .fontWeight(.bold)
                        
                        HStack(spacing: 0) {
                            ForEach(1...5, id:\.self) { count in
                                Image(systemName: "star.fill")
                                    .foregroundStyle(.yellow)
                                    .font(.system(size: 10))
                            }
                            Spacer()
                        }
                        
                        Text("$120")
                            .padding(.vertical, 10)
                    
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                }
            }
            .padding(.bottom)
                
        }
    }
}

#Preview {
    ContentView()
}
