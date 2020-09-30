//
//  FruitCell.swift
//  Fruits
//
//  Created by Atalay Aşa on 29.09.2020.
//

import SwiftUI

struct FruitCell: View {
    
    let fruit: Fruit
    
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .foregroundColor(Color.secondary)
                    .font(.caption)
            }
        }
        .padding(.vertical, 10)
    }
}

struct FruitCell_Previews: PreviewProvider {
    static var previews: some View {
        FruitCell(fruit: fruitsData.first!)
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
