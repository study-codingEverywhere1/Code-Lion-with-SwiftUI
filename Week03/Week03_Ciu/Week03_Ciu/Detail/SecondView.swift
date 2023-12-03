//
//  SecondView.swift
//  Week03_Ciu
//
//  Created by 강치우 on 12/2/23.
//

import SwiftUI

struct SecondView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var ButtonOnOff: Bool = true
    var nike: Nike
    
    var body: some View {
        VStack {
            // MARK: - dismiss
            HStack {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 13)
                        .foregroundColor(.primary)
                }
                .hSpacing(.leading)
                .padding([.top, .leading], 25)
            }
        
            // MARK: - Name, Button
            HStack {
                Text(nike.name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .fontDesign(.serif)
                
                Spacer()
                
                Button {
                    ButtonOnOff.toggle()
                } label: {
                    if ButtonOnOff == false {
                        Image(systemName: "heart.fill")
                            .frame(width: 40, height: 40)
                            .foregroundStyle(.white)
                            .background(Color(.heart))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    } else {
                        Image(systemName: "heart.fill")
                            .frame(width: 40, height: 40)
                            .foregroundStyle(.red)
                            .background(.heart)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                .shadow(color: .gray, radius: 0.2)
            }
            .padding(.top, 10)
            .padding(.horizontal, 25)
            
            HStack(spacing: 5) {
                Image(systemName: "star.fill")
                    .foregroundStyle(.tabbutton)
                
                Text(nike.star)
                    .font(.subheadline)
                    .fontWeight(.bold)
                
                Text("reviews")
                    .font(.callout)
            }
            .hSpacing(.leading)
            .padding(.leading, 25)
            
            Text("$\(nike.price)")
                .font(.system(size: 25, weight: .semibold, design: .serif))
                .padding()
                .padding(.leading, 10)
                .hSpacing(.leading)
            
            // MARK: - TabBar
            TabBar()
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SecondView(nike: Nike(name: "Nike Air Porce", price: 180, star: "4.8", image: "nike1"))
}
