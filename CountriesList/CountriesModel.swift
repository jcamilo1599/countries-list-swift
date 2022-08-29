//
//  CountriesModel.swift
//  CountriesList
//
//  Created by Juan Camilo Marín Ochoa on 28/08/22.
//

import Foundation

struct CountryElement: Codable, Identifiable {
    var id: String {
        self.name
    }
    
    let name, code: String
}

typealias Country = [CountryElement]

class CountriesModel: ObservableObject {
    @Published var countries: [CountryElement] = []
    
    init() {
        guard let url = Bundle.main.url(forResource: "countries", withExtension: "json") else {
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            countries = try JSONDecoder().decode([CountryElement].self, from: data)
        } catch {
            print("Error cargando la información: \(error)")
        }
    }
}
