//
//  FruitListView.swift
//  Fruits
//
//  Created by Atalay Aşa on 29.09.2020.
//

import SwiftUI

struct FruitListView: View {
    @State private var isSettingsShown: Bool = false
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
            .navigationBarItems(trailing: Button(action: {
                isSettingsShown = true
            }) {
                Image(systemName: "slider.horizontal.3")
            }.sheet(isPresented: $isSettingsShown, content: {
                SettingsView()
            }))
            .navigationTitle("Fruits")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FruitListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView()
    }
}
