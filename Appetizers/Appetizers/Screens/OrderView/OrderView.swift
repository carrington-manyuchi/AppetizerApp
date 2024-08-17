//
//  OrderView.swift
//  Appetizers
//
//  Created by Manyuchi, Carrington C on 2024/08/15.
//

import SwiftUI

struct OrderView: View {
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack(content: {
                    List {
                        ForEach(MockData.orderItems) { appetizer in
                            AppletizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(.plain)
                    Button(action: {
                        print("order placed")
                    }, label: {
                        APButton(title: "Checkout")
                    })
                    .padding(.bottom, 35)
                })
                if orderItems.isEmpty { 
                    EmptyState(imageName: "empty-order", message: "You cart is current empty.")
                }
            }
            .navigationTitle("🧾 Order")
        }
    }
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}


#Preview {
    OrderView()
}
