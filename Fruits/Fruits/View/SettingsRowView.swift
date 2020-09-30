//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Atalay Aşa on 30.09.2020.
//

import SwiftUI

struct SettingsRowView: View {
    let title: String
    let value: String
    let destinationUrl: String?
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(title)
                    .foregroundColor(.gray)
                Spacer()
                if let url = destinationUrl {
                    Link(value, destination: URL(string: url)!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    Text(value)
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(title: "Developer", value: "Atalay", destinationUrl: "https://www.google.com")
                .previewLayout(.sizeThatFits)
            SettingsRowView(title: "Developer", value: "Atalay", destinationUrl: nil)
                .previewLayout(.sizeThatFits)
        }
    }
}
