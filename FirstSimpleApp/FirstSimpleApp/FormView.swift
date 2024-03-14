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
    @State private var isOn = false
    
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
            
            Toggle(isOn: $isOn) {
                    Text("Accept terms.")
            }
            .toggleStyle(CheckboxToggleStyle())
            .padding()
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                   alignment: .leading)
            
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

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }, label: {
            HStack {
                Image(systemName: configuration.isOn ? "checkmark.square" : "square").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                configuration.label
                
            }
            .foregroundColor(.black)
        })
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FormView()
        }
    }
}
