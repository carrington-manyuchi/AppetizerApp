//
//  AppletizerListCell.swift
//  Appetizers
//
//  Created by Manyuchi, Carrington C on 2024/08/15.
//

import SwiftUI

struct AppletizerListCell: View {
    let appetizer: Appetizer
    var body: some View {
        HStack {
            Image("meat")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height:90)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5, content: {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            })
        }
    }
}

#Preview {
    AppletizerListCell(appetizer: MockData.sampleAppetizer)
}
