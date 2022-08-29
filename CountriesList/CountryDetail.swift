//
//  CountryDetail.swift
//  CountriesList
//
//  Created by Juan Camilo Marín Ochoa on 28/08/22.
//

import SwiftUI

struct CountryDetailView: View {
    var country: CountryElement

    var body: some View {
        VStack {
            CircleImage(code: country.code)
            Text(country.name).font(.title)
                Spacer()
            }
        }
}
