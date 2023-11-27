//
//  dateFont.swift
//  Week2_Sayhong
//
//  Created by 홍세희 on 2023/11/28.
//

import SwiftUI

struct DateText: ViewModifier {
    var size: CGFloat
    init(size: CGFloat) {
        self.size = size
    }
    func body(content: Content) -> some View {
        content
            .font(.system(size: size))
            .foregroundStyle(Color.red)
            
    }
}
