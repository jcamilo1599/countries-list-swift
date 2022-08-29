//
//  CircleImageView.swift
//  CountriesList
//
//  Created by Juan Camilo Marín Ochoa on 28/08/22.
//

import SwiftUI

struct CircleImageView: View {
    var code: String

    var body: some View {
        AsyncImage(url: URL(string: "https://countryflagsapi.com/png/\(code)")) { image in
            image.resizable().aspectRatio(contentMode: .fill)
        } placeholder: {
            ProgressView()
        }
                .frame(width: 200, height: 200)
                .clipShape(Circle())
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(code: "co")
    }
}
