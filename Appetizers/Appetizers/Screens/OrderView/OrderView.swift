//
//  OrderView.swift
//  Appetizers
//
//  Created by Manyuchi, Carrington C on 2024/08/15.
//

import SwiftUI

struct OrderView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationView {
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
            })
            .navigationTitle("🧾 Order")
        }
        .padding(.bottom, 40)
         
    }
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}



#Preview {
    OrderView()
}
