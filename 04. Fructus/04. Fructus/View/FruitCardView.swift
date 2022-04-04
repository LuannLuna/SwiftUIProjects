//
//  FruitCardView.swift
//  04. Fructus
//
//  Created by Luann Luna on 04/04/22.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: PROPERTIES
    @State private var isAnimation: Bool = false
    
    var fruit: Fruit
    
    // MARK: BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // FRUIT: IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.13), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimation ? 1.0 : 0.6)
                    
                // FRUIT: TITLE
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                // FRUIT: HEADLINE
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // BUTTON: START
                StartButtonView()
            } //: ZSTACK
            .onAppear {
                withAnimation(.easeOut(duration: 0.5)) {
                    isAnimation = true
                }
            }
        } //: ZSTACK
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    } //: BODY
}


// MARK: - PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData.first!)
            .previewLayout(.fixed(width: 320, height: 640))
    }
}