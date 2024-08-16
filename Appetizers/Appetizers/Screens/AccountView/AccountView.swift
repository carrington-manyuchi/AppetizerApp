//
//  AccountView.swift
//  Appetizers
//
//  Created by Manyuchi, Carrington C on 2024/08/15.
//

import SwiftUI


struct AccountView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthDate = Date()
    @State private var extraNapkins = false
    @State private var frequentRefills = false

    
    var body: some View {
        NavigationView {
            
            Form {
                Section {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    DatePicker("Birthday", selection: $birthDate, displayedComponents: .date)
                    
                    Button(action: {
                        print("save")
                    }, label: {
                        Text("Save Changes")
                    })
                    
                } header: {
                    Text("Personal Info")
                }
                
                Section {
                    Toggle(isOn: $extraNapkins, label: {
                        Text("Extra Napkins")
                    })
                    Toggle(isOn: $frequentRefills, label: {
                        Text("Frequent Refills")
                    })
                } header: {
                    Text("requests")
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))

                }
            }
             .navigationTitle("👨🏼 Account")
            
        }
    }



#Preview {
    AccountView()
}
