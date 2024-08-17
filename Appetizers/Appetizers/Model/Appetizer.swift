//
//  Appetizer.swift
//  Appetizers
//
//  Created by Manyuchi, Carrington C on 2024/08/15.
//

import Foundation

struct Appetizer: Codable, Identifiable {
    let id, carbs, protein: Int
    let price: Double
    let description, name: String
    let calories: Int
    let imageURL: String
}

struct AppetizerResponse: Codable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 001,
                                           carbs: 99,
                                           protein: 20,
                                           price: 11.99,
                                           description: "This is the description of an appetiser",
                                           name: "Test appetiser",
                                           calories: 312,
                                           imageURL: "house")
    
    static let OrderItemOne = Appetizer(id: 001,
                                           carbs: 99,
                                           protein: 20,
                                           price: 6.00,
                                           description: "This is the description of an appetiser",
                                           name: "One  appetiser",
                                           calories: 312,
                                           imageURL: "house")

    static let OrderItemTwo = Appetizer(id: 002,
                                           carbs: 99,
                                           protein: 20,
                                           price: 19.99,
                                           description: "This is the description of an appetiser",
                                           name: "Test appetiser 2",
                                           calories: 32,
                                           imageURL: "house")
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItems = [OrderItemOne, OrderItemTwo]
}
