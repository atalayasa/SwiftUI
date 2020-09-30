//
//  FruitNutritiensView.swift
//  Fruits
//
//  Created by Atalay Aşa on 30.09.2020.
//

import SwiftUI
// https://medium.com/better-programming/disclosuregroup-in-swiftui-868739aedf77
struct FruitNutritiensView: View {
    
    let fruit: Fruit
    let nutritions: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutritions.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        HStack {
                            Image(systemName: "info.circle")
                            Text(nutritions[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct FruitNutritiensView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutritiensView(fruit: fruitsData[2])
            .previewLayout(.sizeThatFits)
    }
}
