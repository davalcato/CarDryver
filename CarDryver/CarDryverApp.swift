//
//  CarDryverApp.swift
//  CarDryver
//
//  Created by Daval Cato on 3/28/23.
//

import SwiftUI
import Firebase
import GoogleSignIn

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return GIDSignIn.sharedInstance.handle(url)
    }
    
}

@main
struct CarDryver: App {
  // register app delegate for Firebase setup
  @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
   
//    let signupVM = SignUpViewModel()

        var body: some Scene {
            WindowGroup {
                ContentView()
                    .environmentObject(SignUpViewModel()) // Pass the view model to the environment
            }
        }
    }
