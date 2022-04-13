//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Luann Luna on 08/04/22.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
