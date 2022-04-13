//
//  FeatureItemView.swift
//  Touchdown
//
//  Created by Luann Luna on 08/04/22.
//

import SwiftUI

struct FeatureItemView: View {
    
    let player: Player
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeatureItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureItemView(player: players.first!)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
