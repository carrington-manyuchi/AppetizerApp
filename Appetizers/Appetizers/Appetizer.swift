//
//  Appetizer.swift
//  Appetizers
//
//  Created by Manyuchi, Carrington C on 2024/08/15.
//

import Foundation

struct Appetizer: Codable {
    let id, carbs, protein: Int
    let price: Double
    let description, name: String
    let calories: Int
    let imageURL: String
}

struct AppetizerResponse {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 001,
                                           carbs: 99,
                                           protein: 20,
                                           price: 10.99,
                                           description: "This is the description of an appetiser",
                                           name: "Test appetiser",
                                           calories: 312,
                                           imageURL: "house")
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
