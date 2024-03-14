//
//  ContentView.swift
//  FirstSimpleApp
//
//  Created by Paulína Romančíková on 14/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("Hi")
                .font(.largeTitle)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
            
            Text("new user!")
            
            NavigationLink("Let's start") {
                FormView()
            }
            .buttonStyle(.borderedProminent)
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
