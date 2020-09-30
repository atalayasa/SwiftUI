//
//  DetailHeaderView.swift
//  Fruits
//
//  Created by Atalay Aşa on 30.09.2020.
//

import SwiftUI

struct DetailHeaderView: View {
    let fruit: Fruit
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.6), radius: 8, x: 6, y: 8)
        }.frame(height: 440)
    }
}

struct DetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeaderView(fruit: fruitsData[1])
            .previewLayout(.sizeThatFits)
    }
}
