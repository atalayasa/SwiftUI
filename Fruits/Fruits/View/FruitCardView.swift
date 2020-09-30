//
//  FruitCardView.swift
//  Fruits
//
//  Created by Atalay Aşa on 29.09.2020.
//

import SwiftUI

struct FruitCardView: View {
    
    var fruit: Fruit
    @State var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(16)
                    .frame(maxWidth: 480)
                StartButton()
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
            .padding(.horizontal, 20)
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData.first!)
    }
}
