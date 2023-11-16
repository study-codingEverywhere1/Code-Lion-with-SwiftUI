//
//  furnitureData.swift
//  Week1-Nelchupapa
//
//  Created by 백대홍 on 11/16/23.
//


import SwiftUI

struct Furniture: Identifiable {
    var id = UUID()
    var title: String
    var category: String
    var image: String
    var description: String
    var star: Int
    var price: Int
}



var furnituresData: [Furniture] = [
    Furniture(
        title: "Minimalist Chair",
        category: "Office",
        image: "sofa",
        description: "Amazing stylish in multiple colors choice we have for.\nMost selling item of this year..",
        star: 5,
        price: 120
        
        
    ),
    Furniture(
        title: "Minimalist Chair",
        category: "Office",
        image: "chair",
        description: "Amazing stylish in multiple colors choice we have for.\nMost selling item of this year..",
        star: 5,
        price: 120
        
        
    ),
    Furniture(
        title: "Minimalist Chair",
        category: "Office",
        image: "sofa",
        description: "Amazing stylish in multiple colors choice we have for.\nMost selling item of this year..",
        star: 5,
        price: 120
        
        
    )
    
]



