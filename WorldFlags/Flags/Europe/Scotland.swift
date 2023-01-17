//
//  Scotland.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-16.
//

import SwiftUI
import Numerics

struct Scotland: View {
    let blue = Color(red: 0.15, green: 0.36, blue: 0.70)
    @State private var orientation = UIDeviceOrientation.landscapeLeft

    var body: some View {

        GeometryReader { geometry in

            let opposite = geometry.size.width / 2.0
            let adjacent = geometry.size.height / 2.0

            let angle = atan(opposite / adjacent)
            let diagonalLength: CGFloat = geometry.size.height * 2   //sqrt( (geometry.size.width * geometry.size.width) + (geometry.size.height * geometry.size.height))

            ZStack {
                blue

                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 60, height: diagonalLength)
                    .rotationEffect(Angle(radians: angle), anchor: .center)

//                Rectangle()
//                    .foregroundColor(.white)
//                    .frame(width: 60)
//                    .rotationEffect(Angle(radians: -angle))

            }
        }
    }
}

struct Scotland_Previews: PreviewProvider {
    static var previews: some View {
        Scotland()
    }
}
