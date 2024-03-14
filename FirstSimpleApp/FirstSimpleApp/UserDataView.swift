//
//  UserDataView.swift
//  FirstSimpleApp
//
//  Created by Paulína Romančíková on 14/03/2024.
//

import SwiftUI

struct UserDataView: View {
    
    @State var personFullName: String = "Name Surname"
    @State var personDayOfBirth: String = "DD.MM.YYYY"
    
    var body: some View {
        
        VStack() {
            Text("Full name:")
                .font(.title2)
                .fontWeight(.bold)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                       alignment: .leading)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                
            Text(personFullName)
                .font(.body)
                .foregroundColor(Color(hue: 1.0, saturation: 0.084, brightness: 0.163))
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                       alignment: .leading)
            
            Text("Day of birth:")
                .font(.title2.bold())
                .fontWeight(.bold)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                       alignment: .leading)
                .padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
            
            Text(personDayOfBirth)
                .font(.body)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                       alignment: .leading)
                .foregroundColor(Color(hue: 1.0, saturation: 0.084, brightness: 0.163))
            
            Spacer()
        }
        .padding()
        .navigationTitle("User Data")
    }
}

struct UseDataView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            UserDataView()
        }
    }
}
