//
//  SettingsView.swift
//  Fruits
//
//  Created by Atalay Aşa on 30.09.2020.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboardingShown") var isOnboardingShown = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // SECTION 1
                    GroupBox(
                        label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80, alignment: .center)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    } // FRUCTUS INFO GROUP BOX
                    
                    // SECTION 2
                    
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")) {
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboardingShown) {
                            if isOnboardingShown {
                              Text("Restarted".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(Color.green)
                            } else {
                              Text("Restart".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.green, lineWidth: 0.1)
                        ).background(RoundedRectangle(cornerRadius: 40).fill(Color.orange))
                        
                    }
                    
                    // SECTION 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                        SettingsRowView(title: "Developer", value: "Atalay Aşa", destinationUrl: nil)
                        SettingsRowView(title: "Designer", value: "John / Jane", destinationUrl: nil)
                        SettingsRowView(title: "Compatibility", value: "iOS 14", destinationUrl: nil)
                        SettingsRowView(title: "Website", value: "SwiftUI MasterClass", destinationUrl: "http://www.atalayasa.com")
                        SettingsRowView(title: "Twitter", value: "@atalayasa", destinationUrl: "https://www.twitter.com/atalayasa")
                        SettingsRowView(title: "SwiftUI", value: "2.0", destinationUrl: nil)
                        SettingsRowView(title: "Version", value: "1.1.0", destinationUrl: nil)
                    }
                }
            }
            .navigationBarTitle(Text("Settings"), displayMode: .large)
            .navigationBarItems(trailing: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "xmark")
            }).padding() // NAVIGATION TRAILING VIEW
        } // NAVIGATION VIEW
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
