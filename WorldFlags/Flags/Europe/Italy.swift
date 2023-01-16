//
//  Italy.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-16.
//

import SwiftUI

struct Italy: View {
    var body: some View {

        let green = Color(red: 0.25, green: 0.57, blue: 0.3)
        let red = Color(red: 0.75, green: 0.22, blue: 0.23)
        HStack(spacing: 0) {
            green
            Color.white
            red
        }
    }
}

struct Italy_Previews: PreviewProvider {
    static var previews: some View {
        Italy()
    }
}
