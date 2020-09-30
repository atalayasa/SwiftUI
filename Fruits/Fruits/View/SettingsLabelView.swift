//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Atalay Aşa on 30.09.2020.
//

import SwiftUI

struct SettingsLabelView: View {
    let labelText: String
    let labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
            Spacer()
            Image(systemName: labelImage)
        }
        .padding(.horizontal, 10)
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Atalay", labelImage: "xmark")
            .previewLayout(.sizeThatFits)
    }
}
