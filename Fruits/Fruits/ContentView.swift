//
//  ContentView.swift
//  Fruits
//
//  Created by Atalay Aşa on 29.09.2020.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            ForEach(fruitsData[0...5]) { fruit in
                FruitCardView(fruit: fruit)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
