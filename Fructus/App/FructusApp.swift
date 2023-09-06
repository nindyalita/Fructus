//
//  FructusApp.swift
//  Fructus
//
//  Created by Nindya Alita Rosalia on 31/08/23.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage ("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }else{
                ContentView()
            }
            
        }
    }
}
