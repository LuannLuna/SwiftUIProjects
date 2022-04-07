//
//  CenterModifier.swift
//  Africa
//
//  Created by Luann Luna on 07/04/22.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
