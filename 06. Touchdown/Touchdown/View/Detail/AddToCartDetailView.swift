//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Luann Luna on 13/04/22.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        Button {
            feedback.impactOccurred()
        } label: {
            Spacer()
            Text("Add to card".uppercased())
                .font(.system(.title2, design: .rounded))
                .foregroundColor(.gray)
                .multilineTextAlignment(.leading)
            Spacer()
        }
        .padding(15)
        .background(
            shop.selectedProduct?.trueColor ??
            sampleProduct.trueColor
        )
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
