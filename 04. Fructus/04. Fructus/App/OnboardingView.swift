//
//  OnboardingView.swift
//  04. Fructus
//
//  Created by Luann Luna on 04/04/22.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    // MARK: BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: PREVIEWS
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
