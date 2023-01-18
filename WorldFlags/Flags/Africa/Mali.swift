//
//  Mali.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-18.
//

import SwiftUI

struct Mali: View {
    let green = Color(red: 0.33, green: 0.71, blue: 0.29)
    let golden = Color(red: 0.96, green: 0.83, blue: 0.29)
    let red = Color(red: 0.75, green: 0.17, blue: 0.16)
    var body: some View {

        HStack(spacing: 0) {
            green
            golden
            red
        }
    }
}

struct Mali_Previews: PreviewProvider {
    static var previews: some View {
        Mali()
    }
}
