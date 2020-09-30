//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Atalay Aşa on 30.09.2020.
//

import SwiftUI

struct FruitDetailView: View {
    let fruit: Fruit
    
    var body: some View {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // Header
                    DetailHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        // Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        // Detail
                        Text(fruit.headline)
                            .font(.headline)
                            .fontWeight(.bold)
                        // Nutritions View
                        FruitNutritiensView(fruit: fruit)
                        // Learn More
                        Text("Learn More About Strawberry".uppercased())
                            .foregroundColor(fruit.gradientColors[1])
                            .fontWeight(.bold)
                        // Detail
                        Text(fruit.description)
                        
                        // Source Link View
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    // MARK: - iPhonelar için değişen bir şey yok ancak iPad için yazıların ortalı gözükmesini sağlamak amacıyla
                    .frame(maxWidth: 640, alignment: .center)
                }
            } // SCROLL VIEW
            .edgesIgnoringSafeArea(.top)
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData.first!)
    }
}
