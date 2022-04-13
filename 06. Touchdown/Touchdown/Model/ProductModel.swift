//
//  ProductModel.swift
//  Touchdown
//
//  Created by Luann Luna on 08/04/22.
//

import SwiftUI

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var trueColor: Color {
        Color(red: color[0], green: color[1], blue: color[2])
    }
    
    var formattedPrice: String {
        "$\(price)"
    }
}
