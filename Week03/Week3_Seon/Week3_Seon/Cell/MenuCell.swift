//
//  MenuCell.swift
//  Week3_Seon
//
//  Created by 정인선 on 12/3/23.
//

import SwiftUI

struct MenuCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("Nike_Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
                Spacer()
                Button {} label: {
                    VStack(alignment: .trailing) {
                        Capsule()
                            .frame(width: 20, height: 3)
                            .foregroundStyle(Color.white)
                        Capsule()
                            .frame(width: 10, height: 3)
                            .foregroundStyle(Color.white)
                    }
                    
                }
            }
            Text("Collections")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.white)
            
        }
    }
}

#Preview {
    MenuCell()
}
