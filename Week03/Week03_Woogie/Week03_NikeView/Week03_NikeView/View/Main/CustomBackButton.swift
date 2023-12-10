//
//  CustomBackButton.swift
//  Week03_NikeView
//
//  Created by 정정욱 on 12/10/23.
//

import Foundation
import SwiftUI

struct CustomBackButton: View {
    // 화면이 표시되는 방식을 제어할 수 있습니다
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss() // 이 버튼을 누르면 뒤로 돌아감
        }) {
            Image(systemName: "arrow.left") // Use your custom back button image
                .foregroundColor(.black)
        }
    }
}
