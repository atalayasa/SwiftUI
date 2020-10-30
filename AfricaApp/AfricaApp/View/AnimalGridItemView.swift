//
//  AnimalGridItemView.swift
//  AfricaApp
//
//  Created by Atalay Aşa on 30.10.2020.
//

import SwiftUI

struct AnimalGridItemView: View {
    
    let animal: Animal
    
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct AnimalGridItemView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalGridItemView(animal: animals.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
