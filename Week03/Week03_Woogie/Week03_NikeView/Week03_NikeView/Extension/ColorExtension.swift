//
//  ColorExtension.swift
//  Week03_NikeView
//
//  Created by 정정욱 on 12/10/23.
//

import SwiftUI


extension Color {
    init(hex: String) {
        let hexString = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var rgbValue: UInt64 = 0
        Scanner(string: hexString).scanHexInt64(&rgbValue)
        
        let red = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgbValue & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue)
    }
}


struct RoundedCornerShape: Shape {
    var topLeftRadius: CGFloat = 0
    var topRightRadius: CGFloat = 0
    var bottomLeftRadius: CGFloat = 0
    var bottomRightRadius: CGFloat = 0
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let topRight = CGPoint(x: rect.maxX - topRightRadius, y: rect.minY + topRightRadius)
        let bottomRight = CGPoint(x: rect.maxX - bottomRightRadius, y: rect.maxY - bottomRightRadius)
        let bottomLeft = CGPoint(x: rect.minX + bottomLeftRadius, y: rect.maxY - bottomLeftRadius)
        let topLeft = CGPoint(x: rect.minX + topLeftRadius, y: rect.minY + topLeftRadius)
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: topRight)
        path.addArc(center: topRight, radius: topRightRadius, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
        path.addLine(to: bottomRight)
        path.addArc(center: bottomRight, radius: bottomRightRadius, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
        path.addLine(to: bottomLeft)
        path.addArc(center: bottomLeft, radius: bottomLeftRadius, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
        path.addLine(to: topLeft)
        path.addArc(center: topLeft, radius: topLeftRadius, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
        
        return path
    }
}
