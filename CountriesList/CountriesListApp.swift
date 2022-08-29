//
//  CountriesListApp.swift
//  CountriesList
//
//  Created by Juan Camilo Marín Ochoa on 28/08/22.
//

import SwiftUI

@main
struct CountriesListApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
