//
//  Bangladesh.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-16.
//

import SwiftUI

struct Bangladesh: View {

    let darkGreenBackgroundColor = Color(red: 0.18, green: 0.41, blue: 0.31)
    let diskColor = Color(red: 0.88, green: 0.24, blue: 0.27)

    var body: some View {

        GeometryReader { geometry in

            ZStack {

                darkGreenBackgroundColor
                Circle()
                    .foregroundColor(diskColor)
                    .frame(width: geometry.size.width / 2)
                    .offset(x: -geometry.size.width / 10)
                    .padding(50)

            }
        }
    }
}

struct Bangladesh_Previews: PreviewProvider {
    static var previews: some View {
        Bangladesh()
    }
}
