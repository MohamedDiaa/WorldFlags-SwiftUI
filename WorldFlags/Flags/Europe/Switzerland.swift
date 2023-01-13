//
//  Switzerland.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-13.
//

import SwiftUI

// https://commons.wikimedia.org/wiki/File:Swiss_Flag_Specifications.svg

struct Switzerland: View {

    var body: some View {

        GeometryReader { geometry in

            let sideLength = min(geometry.size.width, geometry.size.height)
            let squareLength = sideLength / 4.0

            Rectangle()
                .frame(width: sideLength, height: sideLength)
                .foregroundColor(.red)
                .overlay {
                    Rectangle()
                        .frame(width: squareLength, height: squareLength * 3)
                        .foregroundColor(.white)
                    Rectangle()
                        .frame(width: squareLength * 3, height: squareLength)
                        .foregroundColor(.white)
                }
        }
    }
}

struct Switzerland_Previews: PreviewProvider {
    static var previews: some View {
        Switzerland()
    }
}
