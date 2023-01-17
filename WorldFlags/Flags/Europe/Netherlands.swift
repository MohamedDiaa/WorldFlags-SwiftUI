//
//  Netherlands.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-17.
//

import SwiftUI

struct Netherlands: View {

    let red = Color(red: 0.63, green: 0.16, blue: 0.16)
    let blue = Color(red: 0.15, green: 0.26, blue: 0.53)

    var body: some View {
        VStack {
            red
            Color.white
            blue
        }
    }
}

struct Netherlands_Previews: PreviewProvider {
    static var previews: some View {
        Netherlands()
    }
}
