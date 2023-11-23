//
//  AccountView.swift
//  Podcasts1
//
//  Created by Benedetta Beatrice on 23/11/23.
//

import SwiftUI

struct AccountView: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Spacer()
                Button("Done") {
                    presentationMode.wrappedValue.dismiss()
                }
                .padding()
            }
         
            VStack(alignment: .leading, spacing: 5) {
                Text("Benedetta Beatrice")
                    .font(.title2)
                    .foregroundColor(.primary)
                Text("benedettabeatrice11@gmail.com")
                    .font(.subheadline)
                    .foregroundColor(.primary)
            }
            
            Divider()

            VStack(alignment: .leading, spacing: 15) {
                ForEach(accountOptions, id: \.self) { option in
                    Text(option)
                        .foregroundColor(.primary)
                        .padding(.vertical, 5)
                }
            }
        
            VStack(alignment: .leading, spacing: 5) {
                Text("Notifications")
                    .font(.headline)
                    .foregroundColor(.primary)
            }
            
            Spacer()
        }
        .padding()
        .navigationBarTitle("Account")
        .foregroundColor(.primary)
        .navigationBarItems(trailing: Button("Done") {
            presentationMode.wrappedValue.dismiss()
        })
    }
    

    let accountOptions = [
        "Manage Subscriptions",
        "Redeem Gift Card or Code",
        "Send Gift Card by Email",
        "Add Funds to Apple ID"
    ]
}




#Preview {
    AccountView()
}
