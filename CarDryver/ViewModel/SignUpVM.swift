//
//  LoginVM.swift
//  CarDryver
//
//  Created by Daval Cato on 4/5/23.
//

import SwiftUI
import Firebase
import GoogleSignIn

class SignUpViewModel: ObservableObject {
    
    @Published var isLogin: Bool = false
    
    func signUpWithGoogle() {
        // Get app client id
        guard let clientId = FirebaseApp.app()?.options.clientID else {
            print("Unable to get clientID")
            return
        }
        
        // Get configuration
        let config = GIDConfiguration(clientID: clientId)
        
        // Sign in with Google
        guard let rootViewController = UIApplication.shared.windows.first?.rootViewController else {
            print("Unable to get root view controller")
            return
        }
        
//        GIDSignIn.sharedInstance.signIn(with: config, presenting: rootViewController) { [self] user, error in
//            
//            if let error = error {
//                print("Google sign in error: \(error.localizedDescription)")
//                return
//            }
//            
//            guard let authentication = user?.authentication, let idToken = authentication.idToken else {
//                print("Unable to get authentication or idToken")
//                return
//            }
            
//            let credential = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: authentication.accessToken)
//
//            Auth.auth().signIn(with: credential) { result, error in
//                if let error = error {
//                    print("Firebase authentication error: \(error.localizedDescription)")
//                    return
//                }
//
//                guard let user = result?.user else {
//                    print("Unable to get user")
//                    return
//                }
//
//                print("User signed in: \(user.displayName ?? "")")
//                isLogin.toggle()
//            }
        }
    }







