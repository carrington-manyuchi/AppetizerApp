//
//  AppetizerDetailsView.swift
//  Appetizers
//
//  Created by Manyuchi, Carrington C on 2024/08/16.
//

import SwiftUI

struct AppetizerDetailsView: View {
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack(content: {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack(content: {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40, content: {
                    NutritionInfo(title: "Calories", value: appetizer.calories)
                    NutritionInfo(title: "Carbs", value: appetizer.carbs)
                    NutritionInfo(title: "Protein", value: appetizer.protein)
                })
            })
            Spacer()
            Button(action: {
                print("Button Tapped")
            }, label: {
                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
            })
            .padding(.bottom, 30)
        })
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        
        .overlay(alignment: .topTrailing) {
            Button(action: {
                isShowingDetail = false
            }, label: {
                XDismissButton()
            })
        }       
    }
}

#Preview {
    AppetizerDetailsView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}

struct NutritionInfo: View {
    
    let title: String
    let value: Int
    
    var body: some View {
        VStack(spacing: 5, content: {
            Text(title)
                .bold()
                .font(.caption)
            
            Text("\(value)")
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        })
    }
}
