//
//  ChairView.swift
//  Week1_Ciu
//
//  Created by 강치우 on 11/16/23.
//

import SwiftUI

struct ChairView: View {
    var body: some View {
        NavigationStack {
            Image("chair3")
                .resizable()
                .frame(width: 350, height: 420)
                .clipShape(.rect(cornerRadius: 15))
            
            // Circle
            HStack {
                Circle()
                    .frame(width: 13)
                    .foregroundStyle(.gray)
                    .shadow(radius: 3)
                Circle()
                    .frame(width: 13)
                Circle()
                    .frame(width: 13)
                    .foregroundStyle(.yellow)
                Circle()
                    .frame(width: 13)
                    .foregroundStyle(.blue)
                    
            }
            .padding(.vertical, 25)
            
            VStack(alignment: .leading) {
                Text("Office")
                    .font(.callout)
                    .fontWeight(.semibold)
                
                Text("Minimalist Chair")
                    .font(.title)
                    .fontWeight(.bold)
            }
        }
        .navigationTitle("Details")
    }
}

#Preview {
    ChairView()
}
