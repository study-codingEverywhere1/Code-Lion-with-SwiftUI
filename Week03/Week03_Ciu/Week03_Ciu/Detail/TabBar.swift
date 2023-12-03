//
//  TabView.swift
//  Week03_Ciu
//
//  Created by 강치우 on 12/2/23.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 120)
                    .foregroundStyle(.tab)
                    .clipShape(
                        .rect(topLeadingRadius: 35, topTrailingRadius: 35)
                    )
                HStack {
                    Image("tab")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 90)
                        .padding(.leading, 30)
                    
                    Spacer()
                    
                    Capsule()
                        .frame(width: 210, height: 84)
                        .foregroundStyle(.tabbutton)
                        .overlay {
                            HStack {
                                Button {
                                    // MARK: = Action
                                } label: {
                                    HStack {
                                        Image(systemName: "handbag")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 25, height: 30)
                                            .foregroundStyle(.white)
                                        
                                        Text(" Add To Bag")
                                            .font(.title3)
                                            .fontWeight(.bold)
                                            .foregroundStyle(.white)
                                    }
                                }
                            }
                        }
                }
                .padding()
            }
            .vSpacing(.bottom)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    TabBar()
}
