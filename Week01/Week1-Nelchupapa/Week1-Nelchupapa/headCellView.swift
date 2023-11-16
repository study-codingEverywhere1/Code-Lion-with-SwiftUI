//
//  headCellView.swift
//  Week1-Nelchupapa
//
//  Created by 백대홍 on 11/16/23.
//

import SwiftUI

struct headCellView: View {
    var body: some View {
        HStack {
            Text("Best Furniture For\nYour Room")
                .bold()
                .font(.title2)
            
            Spacer()
            
            Image("라바")
                .resizable()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
        }
    }
}

#Preview {
    headCellView()
}
