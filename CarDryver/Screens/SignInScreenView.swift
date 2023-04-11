//
//  SignInScreenView.swift
//  CarDryver
//
//  Created by Daval Cato on 3/28/23.
//

import SwiftUI
import Firebase
import GoogleSignIn

struct SignInScreenView: View {
    @State private var email: String = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var showAlert = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("BgColor").edgesIgnoringSafeArea(.all)
                VStack {
                    HStack {
                        Spacer()
                    }
                    .padding(.horizontal)
                    Spacer()
                    
                    VStack {
                        Button(action: {
                            print("Sign in with Apple button pressed")
                        }) {
                            SocalLoginButton(image: Image(uiImage: #imageLiteral(resourceName: "apple")), text: Text("Sign in with Apple").foregroundColor(Color("PrimaryColor")))
                                .padding(.vertical, 20)
                                .background(Color.white)
                                .cornerRadius(50)
                                .frame(width: 300)
                        }
                        
                        Button(action: {
                            print("Sign in with Google button pressed")
                        }) {
                            SocalLoginButton(image: Image(uiImage: #imageLiteral(resourceName: "google")), text: Text("Sign in with Google").foregroundColor(Color("PrimaryColor")))
                                .padding(.vertical, 20)
                                .background(Color.white)
                                .cornerRadius(50)
                                .frame(width: 300)
                        }
                        
                        Text("or get a link emailed to you")
                            .foregroundColor(Color.black.opacity(0.4))
                        
                        TextField("Work email address", text: $email)
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(50.0)
                            .shadow(color: Color.black.opacity(0.18), radius: 60, x: 0.0, y: 16)
                            .padding(.vertical)
                        
                        Button(action: {
                            print("Email me a signup link button pressed")
                            showAlert = true
                        }) {
                            PrimaryButton(title: "Email me a signup link")
                        }
                        .alert(isPresented: $showAlert, content: {
                            Alert(
                                title: Text("Contact"),
                                message: Text("Do you want to contact us via email?"),
                                primaryButton: .default(Text("Email"), action: {
                                    if let url = URL(string: "mailto:support@yourapp.com") {
                                        UIApplication.shared.open(url)
                                    }
                                }),
                                secondaryButton: .cancel()
                            )
                        })
                    }
                    
                    Spacer()
                    Divider()
                    Spacer()
                    Text("You are completely safe.")
                    
                    NavigationLink(destination: TermsAndConditionsView()) {
                        Text("Read our Terms & Conditions.")
                            .bold()
                            .foregroundColor(Color("PrimaryColor"))
                            .font(.system(size: 13))
                    }
                    
                    Spacer()
                    
                }
                .padding()
            }
            .gesture(DragGesture().onEnded({ (value) in
                if value.translation.width > 100 {
                    self.presentationMode.wrappedValue.dismiss()
                }
            }))
            .navigationTitle("Sign In")
        }
    }
}

struct TermsAndConditionsView: View {
    var body: some View {
        Text("Read our Terms & Conditions.")
            .bold()
            .font(.system(size: 13))
    }
}

struct SignInScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreenView()
    }
}


struct SocalLoginButton: View {
    var image: Image
    var text: Text
    
    var body: some View {
        HStack {
            image
                .padding(.horizontal)
            Spacer()
            text
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50.0)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
    }
}
