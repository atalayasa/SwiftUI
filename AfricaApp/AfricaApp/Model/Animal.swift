//
//  Animal.swift
//  AfricaApp
//
//  Created by Atalay Aşa on 27.10.2020.
//

import Foundation

struct Animal: Decodable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
