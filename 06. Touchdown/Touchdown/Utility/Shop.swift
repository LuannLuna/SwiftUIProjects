//
//  Shop.swift
//  Touchdown
//
//  Created by Luann Luna on 13/04/22.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
