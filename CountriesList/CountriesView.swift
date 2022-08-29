//
//  CountriesView.swift
//  CountriesList
//
//  Created by Juan Camilo Marín Ochoa on 28/08/22.
//

import SwiftUI

struct CountriesView: View {
    // StateObject: retiene el estado, crea singleton)
    // ObservedObject: es idoneo cuando se va a utilizar en un solo lugar
    @ObservedObject var countries = CountriesModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(countries.countries, id: \.name) { country in
                    NavigationLink {
                        CountryDetailView(country: country)
                    } label: {
                        Text("\(country.name)")
                    }
                }
            }
            .navigationTitle("Paises")
        }
    }
}

struct CountriesView_Previews: PreviewProvider {
    static var previews: some View {
        CountriesView()
    }
}
