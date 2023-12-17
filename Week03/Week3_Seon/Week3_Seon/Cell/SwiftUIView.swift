//
//  SwiftUIView.swift
//  Week3_Seon
//
//  Created by 정인선 on 12/12/23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        MapBalloon()
            .frame(width: 20, height: 30)
            .foregroundStyle(.pink)
    }
}

struct MapBalloon: Shape {
    
    var startAngle: Angle = .degrees(180)
    var endAngle: Angle = .degrees(0)
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addCurve(to: CGPoint(x: rect.minX, y: rect.midY),
                      control1: CGPoint(x: rect.midX, y: rect.maxY),
                      control2: CGPoint(x: rect.minX, y: rect.midY + rect.height / 5))
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: startAngle, endAngle: endAngle, clockwise: false)
        path.addCurve(to: CGPoint(x: rect.midX, y: rect.maxY),
                      control1: CGPoint(x: rect.maxX, y: rect.midY + rect.height / 5),
                      control2: CGPoint(x: rect.midX, y: rect.maxY))
        
        return path
    }
}

#Preview {
    SwiftUIView()
}
