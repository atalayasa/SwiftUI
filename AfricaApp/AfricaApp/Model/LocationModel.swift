//
//  LocationModel.swift
//  AfricaApp
//
//  Created by Atalay Aşa on 30.10.2020.
//

import Foundation
import MapKit

struct LocationModel: Decodable, Identifiable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude,
                               longitude: longitude)
    }
}
