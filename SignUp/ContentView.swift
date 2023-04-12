//
//  ContentView.swift
//  SignUp
//
//  Created by Trung Luu on 4/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var street = ""
    @State private var city = ""
    @State private var zip = ""
    @State private var lessThanTwo = false
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Names")) {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                }
                Section(header: Text("Current Address")) {
                    TextField("Street Address", text: $street)
                    TextField("City", text: $city)
                    TextField("Zip", text: $zip)
                    Toggle(isOn: $lessThanTwo) {
                        Text("Have you lived here for 2+ years?")
                    }
                }
                if (!lessThanTwo) {
                    Section(header: Text("Previous Address")) {
                        TextField("Street Address", text: $street)
                        TextField("City", text: $city)
                        TextField("Zip", text: $zip)
                    }
                }
                Section(header: Text("Create Account Info")) {
                    TextField("Create Username", text: $username)
                    SecureField("Password", text: $password)
                }
                Button("Submit") {
                    print("Form submit action here")
                }
            }.navigationTitle("Sign Up")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
