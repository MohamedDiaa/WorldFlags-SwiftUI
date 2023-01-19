//
//  Colombia.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-19.
//

import SwiftUI

struct Colombia: View {
    var body: some View {
        let yellow = Color(red: 0.97, green: 0.82, blue: 0.27)
        let blue = Color(red: 0.05, green: 0.17, blue: 0.51)
        let red = Color(red: 0.73, green: 0.16, blue: 0.19)

        VStack(spacing: 0) {
            yellow
            yellow
            blue
            red
        }
    }
}

struct Colombia_Previews: PreviewProvider {
    static var previews: some View {
        Colombia()
    }
}
