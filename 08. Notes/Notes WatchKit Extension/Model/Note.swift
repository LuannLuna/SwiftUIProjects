//
//  Note.swift
//  Notes WatchKit Extension
//
//  Created by Luann Luna on 15/04/22.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
