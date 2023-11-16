//
//  DetailView.swift
//  Week1_Seon
//
//  Created by 정인선 on 11/16/23.
//

import SwiftUI

struct DetailView: View {
    
    var colors = [Color.gray, Color.black, Color.yellow, Color.blue]
    
    var body: some View {
        VStack {
            Image("DetailChair")
                .resizable()
                .scaledToFit()
                .frame(height: 400)
            
            HStack {
                ForEach(colors, id: \.self) { color in
                    Image(systemName: "circle.fill")
                        .foregroundStyle(color)
                }
            }
            .padding()
            
            VStack(alignment: .leading) {
                Text("Office")
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
                HStack{
                    Text("Minimalist Chair")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    Button {} label : {
                        Image(systemName: "bag.fill")
                    }
                    .tint(.black)
                    .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.963))
                }
                .padding(.vertical, 8)
                
                HStack {
                    ForEach(1...5, id:\.self) { count in
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                    }
                    
                    Spacer()
                }
                
                Text("Amazing stylish in multiple colors choice we have for. Most selling item of this year")
                
                Button {
                } label : {
                    Text("Read more")
                }
            }.padding()
            
            HStack {
                Text("Price")
                Text("$120")
                Spacer()
                Button {} label: {
                    Text("-")
                }
                Text("1")
                Button {} label : {
                    Text("+")
                }
            }
            
            Button {} label: {
                Text("Buy now")
            }
        }
    }
}

#Preview {
    DetailView()
}
