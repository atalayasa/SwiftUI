//
//  FruitsApp.swift
//  Fruits
//
//  Created by Atalay Aşa on 29.09.2020.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnboardingShown") var isOnboardingShown = false
    
    var body: some Scene {
        WindowGroup {
            if isOnboardingShown {
                FruitListView()
            } else {
                OnboardingView()
            }
        }
    }
}
