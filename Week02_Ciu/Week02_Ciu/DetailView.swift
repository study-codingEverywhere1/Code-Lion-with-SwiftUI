//
//  DetailView.swift
//  Week02_Ciu
//
//  Created by 강치우 on 11/27/23.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.dismiss) private var dismiss
    var movie: movieModel
    
    var body: some View {
        ZStack(alignment: .leading) {
            Image(movie.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .ignoresSafeArea(.all)
            VStack {
                HStack {
                    Button {
                        // 버튼 눌렀을 때 기능
                    } label: {
                        // 메뉴 버튼을 캡슐로 만듬
                        VStack(spacing: 5) {
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 25, height: 3)
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 25, height: 3)
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 25, height: 3)
                        }
                    }
                    
                    Spacer()
                    
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .font(.system(size: 23, weight: .semibold))
                    }
                }
                .foregroundStyle(.white)
                .padding(.horizontal)
                
                Spacer()
                
                VStack {
                    Text(movie.intro)
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .lineSpacing(7)
                        .foregroundStyle(.white)
                        
                }
                .padding()
            }
        }
        .navigationBarBackButtonHidden(true)
        .background(.black)
    }
}
