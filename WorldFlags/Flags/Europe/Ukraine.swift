//
//  Ukraine.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-16.
//

import SwiftUI

struct Ukraine: View {
    var body: some View {
        let blue = Color(red: 0.15, green: 0.35, blue: 0.71)
        let yellow = Color(red: 0.97, green: 0.85, blue: 0.29)

        VStack(spacing: 0){
            blue
            yellow
        }
    }
}

struct Ukraine_Previews: PreviewProvider {
    static var previews: some View {
        Ukraine()
    }
}
