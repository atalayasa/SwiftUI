//
//  StartButton.swift
//  Fruits
//
//  Created by Atalay Aşa on 29.09.2020.
//

import SwiftUI

struct StartButton: View {
    @AppStorage("isOnboardingShown") var isOnboardingShown: Bool?
    
    var body: some View {
        Button(action: {
            isOnboardingShown = true
        }) {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        }
        
        .accentColor(.white)
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
