//
//  Setting.swift
//  Citas
//
//  Created by Asge Yohannes on 7/13/19.
//  Copyright © 2019 Asge Yohannes. All rights reserved.
//

import SwiftUI
import Combine


struct Settings : View {
    @State var receive = true
    @State var emailNumber: Int = 1
    @State var selection: Int = 1
    @State var date: Date = Date()
    @State var email: String = ""
    @State var submit = false
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Toggle(isOn: $receive) {
                        Text("Receive notifications")
                    }
                    Stepper(value: $emailNumber, in: 1...10) {
                        Text("\(emailNumber) email\(emailNumber > 1 ? "s": "") per month")
                    }
                    Picker(selection: $selection, label: Text("Favorite course")) {
                        Text("SwiftUI").tag(1)
                        Text("React").tag(2)
                    }
                    DatePicker($date) {
                        Text("Date")
                            .lineLimit(nil)
                    }
                }
                Section(header: Text("Email")) {
                    TextField($email, placeholder: Text("Your email"))
                        .textFieldStyle(.roundedBorder)
                        .textContentType(.emailAddress)
                }
                Button(action: { self.submit.toggle() }) {
                    Text("Save")
                }
                
                if submit {
                    VStack(alignment: .leading, spacing: 12) {
                        Text(receive ? "Subscribed": "Not subscribed")
                        Text("Emails: \(emailNumber)")
                        Text("Favorite: \(selection)")
                        Text("Date: \(date)")
                        Text("email: \(email)")
                    }.padding()
                }
            }
            .navigationBarTitle(Text("Settings"))
        }
    }
    
}

#if DEBUG
struct Setting_Previews : PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
#endif
