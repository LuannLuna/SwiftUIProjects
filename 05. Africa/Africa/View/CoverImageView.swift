//
//  CoverImageView.swift
//  Africa
//
//  Created by Luann Luna on 04/04/22.
//

import SwiftUI

struct CoverImageView: View {
    
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    var body: some View {
        TabView {
            ForEach(coverImages) { img in
                
                Image(img.name)
                    .resizable()
                .scaledToFill()
                
            } //: FOREACH
        } //: TABVIEW
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
