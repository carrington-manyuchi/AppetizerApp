//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Manyuchi, Carrington C on 2024/08/15.
//

import SwiftUI

struct AppetizerListView: View {
    
    
    
    var body: some View {
        NavigationView {
            List(MockData.appetizers) { appetizer in
                AppletizerListCell(appetizer: appetizer)
            }
            .navigationTitle("Appetizers")
        }
    }
}


#Preview {
    AppetizerListView()
}
