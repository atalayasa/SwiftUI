//
//  Fruit.swift
//  Fruits
//
//  Created by Atalay Aşa on 29.09.2020.
//

import SwiftUI

struct Fruit: Identifiable {
    let id = UUID()
    let title: String
    let headline:String
    let image: String
    let gradientColors: [Color]
    let description: String
    let nutrition: [String]
}
