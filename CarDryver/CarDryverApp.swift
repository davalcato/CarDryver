//
//  CarDryverApp.swift
//  CarDryver
//
//  Created by Daval Cato on 3/28/23.
//

import SwiftUI

@main
struct CarDryverApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
