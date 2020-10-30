//
//  ExternalWeblinkView.swift
//  AfricaApp
//
//  Created by Atalay Aşa on 27.10.2020.
//

import SwiftUI

struct ExternalWeblinkView: View {
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!)
                }
                .foregroundColor(.accentColor)
            } // HStack
        } // Box
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWeblinkView(animal: animals.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
