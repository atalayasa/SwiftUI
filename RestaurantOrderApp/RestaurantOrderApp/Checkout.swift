//
//  Checkout.swift
//  RestaurantOrderApp
//
//  Created by Atalay Asa on 6.11.2019.
//  Copyright © 2019 Atalay Asa. All rights reserved.
//

import SwiftUI

struct Checkout: View {
    @EnvironmentObject var order: Order
    static let paymentTypes = ["Cash", "Credit Card", "iDine"]
    static let tipAmounts = [10, 15, 20, 25, 0]
    @State private var paymentType = 0
    @State private var addLoyaltyDetails = false
    @State private var loyaltyNumber = ""
    @State private var tipAmount = 1
    @State private var showingPaymentAlert = false
    var totalPrice: String {
        let total = Double(order.total)
        let tipValue = total / 100 * Double(Self.tipAmounts[tipAmount])
        let preciseValue = String(format: "%.2f", total + tipValue)
        return "TOTAL: $\(preciseValue)"
    }
    var body: some View {
        Form {
            Section {
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(0 ..< Self.paymentTypes.count) {
                        Text(Self.paymentTypes[$0])
                    }
                }
            }
            Toggle(isOn: $addLoyaltyDetails.animation()) {
                Text("Add iDine loyalty card")
            }
            if addLoyaltyDetails {
                TextField("Enter your iDine ID", text: $loyaltyNumber)
            }
            Section(header: Text("Add a tip?")) {
                Picker("Percentage:", selection: $tipAmount) {
                    ForEach(0 ..< Self.tipAmounts.count) {
                        Text("\(Self.tipAmounts[$0])%")
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
            Section(header: Text(totalPrice).font(.largeTitle)) {
                Button("Confirm order") {
                    self.showingPaymentAlert.toggle()
                }
            }
        }
        .navigationBarTitle(Text("Payment"), displayMode: .inline)
        .alert(isPresented: $showingPaymentAlert) {
            Alert(title: Text("Order confirmed"), message: Text("Your \(totalPrice) - thank you"), dismissButton: .default(Text("OK")))
        }
    }
}

struct Checkout_Previews: PreviewProvider {
    static var order = Order()
    static var previews: some View {
        Checkout().environmentObject(order)
    }
}
