//
//  readmoreView.swift
//  Week2_Nelchupapa
//
//  Created by 백대홍 on 11/28/23.
//


import SwiftUI

struct readmoreView: View {
    @State private var expanded: Bool = false
    @State private var truncated: Bool = false
    private var text: String
    
    let lineLimit: Int
    
    init(_ text: String, lineLimit: Int) {
        self.text = text
        self.lineLimit = lineLimit
    }
    
    private var moreLessText: String {
        if !truncated {
            return ""
        } else {
            return self.expanded ? "read less" : " read more"
        }
    }
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(text)
                    .font(.title3)
                    .foregroundStyle(.white)
                    .bold()
                    .padding(.vertical)
                    
                    .kerning(1)
                    .lineLimit(expanded ? nil : lineLimit)
                    .background(
                        Text(text).lineLimit(lineLimit)
                            .background(GeometryReader { visibleTextGeometry in
                                ZStack {
                                    Text(self.text)
                                        .background(GeometryReader { fullTextGeometry in
                                            Color.clear.onAppear {
                                                self.truncated = fullTextGeometry.size.height > visibleTextGeometry.size.height
                                            }
                                        })
                                }
                                .frame(height: .greatestFiniteMagnitude)
                            })
                            .hidden()
                    )
                if truncated {
                    Button(action: {
                        withAnimation {
                            expanded.toggle()
                        }
                    }, label: {
                        Text(moreLessText)
                    })
                }
            }
            .padding()
            .background(Color.black)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 2))
            .shadow(color: .black, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
    }
}


#Preview {
    readmoreView("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut laborum", lineLimit: 3)
}
