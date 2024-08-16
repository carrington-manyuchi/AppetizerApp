//
//  ContentView.swift
//  Appetizers
//
//  Created by Manyuchi, Carrington C on 2024/08/15.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .tint((Color("brandPrimary")))
    }
}

#Preview {
    AppetizerTabView()
}
