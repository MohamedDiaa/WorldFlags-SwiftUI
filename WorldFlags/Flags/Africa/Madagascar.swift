//
//  Madagascar.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-18.
//

import SwiftUI

struct Madagascar: View {
    var body: some View {
        let red = Color(red: 0.9, green: 0.31, blue: 0.26)
        let green = Color(red: 0.23, green: 0.51, blue: 0.26)
        GeometryReader { geometry in

            HStack(spacing: 0) {

                Color.white
                    .frame(width: geometry.size.width * 2.0 / 5.0)
                VStack(spacing: 0) {
                    red
                    green
                }
            }
        }
    }
}

struct Madagascar_Previews: PreviewProvider {
    static var previews: some View {
        Madagascar()
    }
}
