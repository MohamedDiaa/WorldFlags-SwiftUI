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

            let ptA: CGPoint = frame.origin
            let ptB: CGPoint =  .init(x: frame.midX, y: frame.maxY)
            let ptC: CGPoint = .init(x: frame.maxX, y: frame.minY)
            let slope = (ptA.y - ptB.y) / (ptA.x - ptB.y)

            ZStack {
                red

                Path { path in

                    path.move(to: ptA)
                    path.addLines([
                        ptB,
                        ptC,
                        ptA
                    ])
                    path.closeSubpath()
                }
                .fill(.black)

                Path { path in

                    // Point D
                    let ptD_y: CGFloat = 200
                    let ptD_x = ptD_y / slope
                    let ptD: CGPoint = .init(x: ptD_x, y: ptD_y)


                    let ptB: CGPoint = .init(x: frame.width * 2 / 3 , y: frame.height * 0.5)

                    path.move(to: ptD)
                    path.addLines([
                        .init(x: frame.midX, y: frame.maxY),
                       ptB,
                        ptD
                    ])
                    path.closeSubpath()
                }
                .fill(.white)
            }
        }
    }
}

struct Antigua_and_Barbuda_Previews: PreviewProvider {
    static var previews: some View {
        Antigua_and_Barbuda()
    }
}
