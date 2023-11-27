//
//  MenuIcon.swift
//  Week2_Sayhong
//
//  Created by 홍세희 on 2023/11/28.
//

import SwiftUI

struct MenuIcon: View {
    var body: some View {
        VStack(spacing: 5) {
            //ForEach로 바꾸는게 낫나?
            Capsule()
                .fill(Color.white)
                .frame(width: 35, height: 4)
            Capsule()
                .fill(Color.white)
                .frame(width: 35, height: 4)
            Capsule()
                .fill(Color.white)
                .frame(width: 35, height: 4)
        }
    }
}

#Preview {
    MenuIcon()
        .padding(200)
        .background(Color.black)
        
}

