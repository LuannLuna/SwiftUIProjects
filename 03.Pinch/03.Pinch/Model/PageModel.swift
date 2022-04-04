//
//  PageModel.swift
//  03.Pinch
//
//  Created by Luann Luna on 04/04/22.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
