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
}
