//
//  EmptyState.swift
//  Appetizers
//
//  Created by Manyuchi, Carrington C on 2024/08/17.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack(content: {
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack(content: {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding()
            })
        })
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "You cart is current empty. \nBefore proceed to checkout you must add some products to your shopping cart.")
}
