//
//  FruitListView.swift
//  Fruits
//
//  Created by Atalay Aşa on 29.09.2020.
//

import SwiftUI

struct FruitListView: View {
    let fruits = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitCell(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

struct FruitListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView()
    }
}
