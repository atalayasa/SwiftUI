//
//  SourceLinkView.swift
//  Fruits
//
//  Created by Atalay Aşa on 30.09.2020.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://www.google.com")!)
                Image(systemName: "link")
            }
            .font(.footnote)
            
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
    }
}
