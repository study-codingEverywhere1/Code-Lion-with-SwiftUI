//
//  adView.swift
//  Week1-Nelchupapa
//
//  Created by 백대홍 on 11/16/23.
//

import SwiftUI

struct adView: View {
    var body: some View {
        ZStack {
            HStack {
                VStack(alignment: .leading, spacing: 16) {
                    Text("20% Off")
                        .foregroundColor(.black)
                        .font(.caption)
                    Text("Best deals on\nChair")
                        .bold()
                        .font(.title2)
                        .foregroundColor(.white)
                    HStack {
                        Text("Check it out")
                            .foregroundColor(.white)
                        Image(systemName: "arrow.right")
                            .foregroundColor(.white)
                    }
                }
                Image("adchair")
                    .resizable()
            }
            .padding()
        }
        .frame(width: 353, height: 180)
        .background(.gray)
        .cornerRadius(6)
        .shadow(radius: 10)
    }
}

#Preview {
    adView()
}
