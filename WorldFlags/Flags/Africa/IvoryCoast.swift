//
//  IvoryCoast.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-18.
//

import SwiftUI

struct IvoryCoast: View {
    let orange = Color(red: 0.91, green: 0.53, blue: 0.20)
    let green = Color(red: 0.27, green: 0.62, blue: 0.40)

    var body: some View {

        VStack(spacing: 0) {
            orange
            Color.white
            green
        }
    }
}

struct IvoryCoast_Previews: PreviewProvider {
    static var previews: some View {
        IvoryCoast()
    }
}
