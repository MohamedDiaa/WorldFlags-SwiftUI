//
//  Botswana.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-19.
//

import SwiftUI

struct Botswana: View {
    let blue = Color(red: 0.48, green: 0.66, blue: 0.81)
    var body: some View {

        VStack(spacing: 20) {
            blue
            Color.black
                .frame(height: 80)
            blue
        }
    }
}

struct Botswana_Previews: PreviewProvider {
    static var previews: some View {
        Botswana()
    }
}
