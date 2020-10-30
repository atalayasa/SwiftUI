//
//  Video.swift
//  AfricaApp
//
//  Created by Atalay Aşa on 27.10.2020.
//

import Foundation

struct Video: Decodable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
