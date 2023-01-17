//
//  France.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-17.
//

import SwiftUI

struct France: View {
    var body: some View {
        let blue = Color(red: 0.03, green: 0.11, blue: 0.56)
        let red = Color(red: 0.85, green: 0.24, blue: 0.25)

        HStack(spacing: 0) {
            blue
            Color.white
            red
        }
    }
}

struct France_Previews: PreviewProvider {
    static var previews: some View {
        France()
    }
}
