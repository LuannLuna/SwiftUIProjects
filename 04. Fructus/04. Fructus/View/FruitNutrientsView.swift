//
//  FruitNutrientsView.swift
//  04. Fructus
//
//  Created by Luann Luna on 04/04/22.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    var fruit: Fruit
    let nutrients: [String] = [
        "Energy",
        "Sugar",
        "Fat",
        "Protein",
        "Vitamins",
        "Minerals"
    ]
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                            .foregroundColor(fruit.gradientColors[1])
                            .font(.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    } // HSTACK
                } //: ForEach
            } //: DISCLOUSEGRUPO
        } //: GROUPBOX
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData.first!)
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
    }
}
