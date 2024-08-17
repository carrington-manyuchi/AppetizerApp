//
//  Alert.swift
//  Appetizers
//
//  Created by Manyuchi, Carrington C on 2024/08/16.
//

import SwiftUI


struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}


struct AlertContext {
    
    //MARK: - Network Alerts
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("The data received from the server is invalid. Please contact support"),
                                       dismissButton: .default(Text("0k")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                           message: Text("Invalid response from the server. Please try again later or contact support"),
                                           dismissButton: .default(Text("0k")))
    
    static let invalidURL = AlertItem(title:  Text("Server Error"),
                                      message: Text("There was an aissue connecting  to the server. If this persists, please contact support"),
                                      dismissButton: .default(Text("0k")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable eto complete your request at this time. Please check your internet connection"),
                                            dismissButton: .default(Text("0k")))
    
    
    
    
    //MARK: - Account Alerts
    
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                            message: Text("Please ensure all the fields in the form have been filled out."),
                                            dismissButton: .default(Text("0k")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                            message: Text("Please ensure your email is correct."),
                                            dismissButton: .default(Text("0k")))
    
    
    static let userSaveSuccess = AlertItem(title: Text("Pofile Saved"),
                                            message: Text("Your profile information was successfully saved."),
                                            dismissButton: .default(Text("0k")))
    
    static let invalidUserData = AlertItem(title: Text("Pofile Error"),
                                            message: Text("There was an error saving or retrieving your profile."),
                                            dismissButton: .default(Text("0k")))
    
}
