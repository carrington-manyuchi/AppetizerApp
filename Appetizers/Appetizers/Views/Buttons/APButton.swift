//
//  APButton.swift
//  Appetizers
//
//  Created by Manyuchi, Carrington C on 2024/08/16.
//

import SwiftUI

struct APButton: View {
    let title: LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundStyle(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
            .shadow(color: .black, radius: 2)
    }
}

#Preview {
    APButton(title: "Test Title")
}
