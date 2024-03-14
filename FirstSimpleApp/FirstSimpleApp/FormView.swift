//
//  FormView.swift
//  FirstSimpleApp
//
//  Created by Paulína Romančíková on 14/03/2024.
//

import SwiftUI

struct FormView: View {
    
    @State var personFullName: String = ""
    @State var personDayOfBirth: String = ""
    
    var body: some View {
        
        VStack() {
            TextField("full name", text:
                $personFullName)
            .textFieldStyle(.roundedBorder)
            .padding(.all, 10.0)
            
            TextField("day of birth", text:
                $personDayOfBirth)
            .textFieldStyle(.roundedBorder)
            .padding(.all, 10.0)
            
            NavigationLink("Create") {
                UserDataView(personFullName: personFullName,
                             personDayOfBirth: personDayOfBirth)
            }
            .padding(.top, 30.0)
            .buttonStyle(.borderedProminent)
            .foregroundColor(.white)
            
            Spacer()
        }
        .navigationTitle("Form")
        .padding()
        
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FormView()
        }
    }
}
