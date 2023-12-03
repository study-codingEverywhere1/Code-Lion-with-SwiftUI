//
//  NikeModel.swift
//  Week03_Ciu
//
//  Created by 강치우 on 12/2/23.
//

import SwiftUI

struct Nike: Identifiable {
    var id = UUID()
    var name: String
    var price: Int
    var star: String
    var image: String
}

var nikeData: [Nike] = [
    Nike(name: "Nike Air Force", price: 180, star: "4.8", image: "nike1"),
    Nike(name: "Nike Dunk Low Retro", price: 210, star: "2.7", image: "nike2"),
    Nike(name: "Nike Air Jordan1", price: 235, star: "3.5", image: "nike3"),
    Nike(name: "Nike Dunk High Retro", price: 310, star: "5.0", image: "nike4")
]
