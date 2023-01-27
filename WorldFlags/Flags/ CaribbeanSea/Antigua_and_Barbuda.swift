//
//  Antigua_and_Barbuda.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-26.
//

import SwiftUI

struct Antigua_and_Barbuda: View {
    let red = Color(red: 0.75, green: 0.16, blue: 0.17)
    let blue = Color(red: 0.19, green: 0.44, blue: 0.76)
    let golden = Color(red: 0.96, green: 0.83, blue: 0.29)

    var body: some View {

        GeometryReader { geo in

            let frame = geo.frame(in: .local)

            ZStack {
                VStack(spacing: 0) {
                    Color.black
                        .overlay {

                            SunShape()
                                .foregroundColor(.yellow)
                                .frame(width: 100)
                                .position(CGPoint(x: frame.midX, y: frame.midY - 44))

                        }
                    blue
                        .frame(height: 100)
                    Color.white
                }

                let path = Path { path in

                    path.move(to: frame.origin)
                    path.addLines([
                        .init(x: frame.midX, y: frame.maxY),
                        .init(x: frame.origin.x, y: frame.maxY),
                        frame.origin
                    ])
                    path.closeSubpath()
                }
                    .fill(red)

                path
                path
                    .scaleEffect(x: -1)
            }
        }
    }
}

struct Antigua_and_Barbuda_Previews: PreviewProvider {
    static var previews: some View {
        Antigua_and_Barbuda()
    }
}
