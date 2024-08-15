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
