//
//  Chile.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-19.
//

import SwiftUI

struct Chile: View {
    var body: some View {
        let red = Color(red: 0.78, green: 0.23, blue: 0.16)
        let blue = Color(red: 0.07, green: 0.21, blue: 0.63)

        VStack(spacing: 0) {
            Color.white
                .overlay {
                    GeometryReader {geometry in
                        let frame = geometry.frame(in: .local)
                        let blueSide = min(frame.width, frame.height)
                        blue
                            .frame(width: min(blueSide, 200), height: blueSide)
                            .overlay {
                                StarShape()
                                    .frame(width: 100)
                                    .foregroundColor(.white)
                            }
                    }
                }
            red
        }
    }
}

struct Chile_Previews: PreviewProvider {
    static var previews: some View {
        Chile()
    }
}
