//
//  CenterModifier.swift
//  AfricaApp
//
//  Created by Atalay Aşa on 30.10.2020.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
