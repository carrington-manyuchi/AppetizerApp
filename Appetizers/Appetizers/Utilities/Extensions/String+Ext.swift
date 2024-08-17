//
//  String+Ext.swift
//  Appetizers
//
//  Created by Manyuchi, Carrington C on 2024/08/16.
//

import Foundation



//Password and email validation

extension String {
    var isValidEmail: Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
    
    var isValidPassword: Bool {
        //regex restricts to Minimum 8 characters at least 1 Alphabet, 1 Number and 1 Special Character:
        let passwordFormat = "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[$@$!%*#?&])[A-Za-z\\d$@$!%*#?&]{8,}$"
        let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", passwordFormat)
        return passwordPredicate.evaluate(with: self)
        
    }
}
