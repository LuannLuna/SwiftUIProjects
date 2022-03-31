//
//  ContentView.swift
//  02.Restart
//
//  Created by Luann Luna on 30/03/22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Property
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    // MARK: Body
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        } //: ZSTACK
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
