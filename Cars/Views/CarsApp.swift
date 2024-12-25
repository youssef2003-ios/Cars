//
//  CarsApp.swift
//  Cars
//
//  Created by youssef ahmed on 31/10/2024.
//

import SwiftUI

@main
struct CarsApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding{
                OnboardingView()
            } else{
                ListView()
            }
            
            
        }
    }
}
