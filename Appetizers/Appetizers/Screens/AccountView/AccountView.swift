//
//  AccountView.swift
//  Appetizers
//
//  Created by Manyuchi, Carrington C on 2024/08/15.
//

import SwiftUI


struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationView {
            
            Form {
                Section {
                    TextField("First Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    DatePicker("Birthday", selection: $viewModel.user.birthDate, displayedComponents: .date)
                    
                    Button(action: {
                        viewModel.saveChanges()
                    }, label: {
                        Text("Save Changes")
                    })
                    
                } header: {
                    Text("Personal Info")
                }
                
                Section {
                    Toggle(isOn: $viewModel.user.extraNapkins, label: {
                        Text("Extra Napkins")
                    })
                    Toggle(isOn: $viewModel.user.frequentRefills, label: {
                        Text("Frequent Refills")
                    })
                } header: {
                    Text("requests")
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))

                }
                .navigationTitle("👨🏼 Account")
            }
        .onAppear(perform: {
            viewModel.retrieveUser()
        })
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: alertItem.dismissButton)
            }
        }
    }



#Preview {
    AccountView()
}
