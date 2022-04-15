//
//  CreditsView.swift
//  Notes WatchKit Extension
//
//  Created by Luann Luna on 15/04/22.
//

import SwiftUI

struct CreditsView: View {
    
    @State private var randomNumber: Int = Int.random(in: 1..<4)
    private var randomImage: String {
        return "developer-no\(randomNumber)"
    }
    
    var body: some View {
        VStack(spacing: 3) {
            // PROFILE
            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            // HEADER
            HeaderView(title: "Credits")
            // CONTENT
            Text("Luann Luna")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
        } //: VSTACK
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
