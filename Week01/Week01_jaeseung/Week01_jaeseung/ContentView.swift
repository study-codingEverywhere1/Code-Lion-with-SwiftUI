//
//  ContentView.swift
//  Week01_jaeseung
//
//  Created by zsm on 11/16/23.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Best Furniture For Your Room ")
                        .font(.largeTitle).bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(15)

                    Image(systemName: "circle.dotted.circle")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .padding(20)
                        .foregroundColor(.blue)
                }
                .padding(.bottom, -28)

                // Horizontal ScrollView between title and main content
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing:-15) {
                        ForEach(0..<5) { _ in
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white)
                                .frame(width: 100, height: 50)
                                .shadow(radius: 5)
                                .padding()
                        }
                    }
                }
                .padding(.bottom, -10)
                
                Text("Best Seller").font(.headline).bold()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .padding(20)
                    .padding(.bottom, -20)

                // Main ScrollView with vertical content
                ScrollView {
                    VStack {
                        ForEach(0..<1) { index in
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach(0..<3)  { _ in
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color.white)
                                            .frame(width: 200, height: 150)
                                            .shadow(radius: 5)
                                            .padding()
                                    }
                                }
                            }
                        }
                    }
                }

                // Move the search bar below the main content
                .searchable(text: $searchText) {
                    // You can customize the search suggestions here
                    Text("Search is not supported yet")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


