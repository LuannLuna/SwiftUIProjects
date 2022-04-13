//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Luann Luna on 07/04/22.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
