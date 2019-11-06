//
//  ItemDetail.swift
//  RestaurantOrderApp
//
//  Created by Atalay Asa on 6.11.2019.
//  Copyright © 2019 Atalay Asa. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    @EnvironmentObject var order: Order
    var item: MenuItem
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            Text(item.description)
                .padding()
            
            Button(action: {
                self.order.add(item: self.item)
            }) {
                HStack {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                    Text("Order This")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                    .padding()
                    .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [Color(red: 0.99, green: 0, blue: 1),
                                                                       Color(red: 0, green: 0.86, blue: 0.87)]),
                                           startPoint: .leading,
                                           endPoint: .trailing))
                    .cornerRadius(40)
            }

            Spacer()
        }.navigationBarTitle(Text(item.name), displayMode: .inline)

    }
}

struct ItemDetail_Previews: PreviewProvider {
    static let order = Order()
    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example).environmentObject(order)
        }
    }
}
