//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Luann Luna on 05/04/22.
//

import SwiftUI

struct InsetGalleryView: View {
    
    let animal: Animal
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { img in
                    Image(img)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            } //: HSTACK
        } //: SCROLLVIEW
    } //: BODY
}

struct InsetGalleryView_Previews: PreviewProvider {
    static let animal: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetGalleryView(animal: animal.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
