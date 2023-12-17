//
//  NikeModel.swift
//  Week3_Seon
//
//  Created by 정인선 on 12/10/23.
//

import Foundation

struct NikeModel: Identifiable {
    let id = UUID()
    let productName: String
    let rate: Float
    let price: Float
    let image: String
    
    static let modelData: [NikeModel] = [
        NikeModel(productName: "ReactFrenzy", rate: 4.0, price: 160, image: "Air_stussy"),
        NikeModel(productName: "Air Max Excee", rate: 3.8, price: 139.9, image: "Dunk_Burgundy_Crush"),
        NikeModel(productName: "ReactFrenzy", rate: 5.0, price: 140, image: "DunkSB_April_Skateboards"),
        NikeModel(productName: "Adapt BB 2.0", rate: 3.4, price: 150, image: "DunkSB_Black"),
        NikeModel(productName: "Air Max Impact", rate: 4.1, price: 160, image: "DunkSB_Wheat")
    ]
}
