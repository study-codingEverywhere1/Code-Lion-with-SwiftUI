//
//  TopView.swift
//  Week03_Ciu
//
//  Created by 강치우 on 12/1/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: -20) {
            HStack {
                Image("nike")
                    .resizable()
                    .frame(width: 70,height: 70)
                
                Spacer()
                
                Button {
                    // MARK: = action
                } label: {
                    // MARK: = Custom Menu Button
                    VStack(alignment: .trailing) {
                        Capsule()
                            .frame(width: 20, height: 3)
                            .foregroundStyle(.white)
                        Capsule()
                            .frame(width: 10, height: 3)
                            .foregroundStyle(.white)
                    }
                }
                .padding()
                
            }
            Text("Collections")
                .font(.title)
                .fontWeight(.bold)
                .fontDesign(.serif)
                .foregroundStyle(.white)
                .padding()
        }
        .background(.black)
    }
}

#Preview {
    HeaderView()
}
