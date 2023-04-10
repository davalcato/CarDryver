//
//  ContentView.swift
//  CarDryver
//
//  Created by Daval Cato on 3/28/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @EnvironmentObject var signupVM:
    SignUpViewModel
   
    var body: some View {
        WelcomeScreenView()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PrimaryButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color("PrimaryColor"))
            .cornerRadius(50)
    }
}
