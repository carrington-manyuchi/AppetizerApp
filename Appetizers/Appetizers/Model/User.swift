//
//  User.swift
//  Appetizers
//
//  Created by Manyuchi, Carrington C on 2024/08/17.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
