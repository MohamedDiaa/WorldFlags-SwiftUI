//
//  Guyana.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-25.
//

import SwiftUI

struct Guyana: View {
    var body: some View {
        let green = Color(red: 0.27, green: 0.62, blue: 0.32)
        let yellow = Color(red: 0.96, green: 0.83, blue: 0.29)
        let red = Color(red: 0.75, green: 0.16, blue: 0.17)

        GeometryReader { geo in
            let frame = geo.frame(in: .local).insetBy(dx: 10, dy: 0)

            ZStack {

                green

                yellow.mask {
                    TrianglePath(
                        frame: frame,
                        middlePoint: .init(x: frame.width, y: frame.midY)
                    )
                }

                TriangleStokePath(
                    frame: frame,
                    middlePoint: .init(x: frame.width , y: frame.midY)
                )
                .stroke(.white, lineWidth: 15)

                red.mask {
                    TrianglePath(
                        frame: frame,
                        middlePoint: .init(x: frame.width / 3, y: frame.midY)
                    )
                }

                TriangleStokePath(
                    frame: frame,
                    middlePoint: .init(x: frame.width / 3, y: frame.midY)
                )
                .stroke(.black, lineWidth: 15)
            }
        }
    }

    func TrianglePath(frame: CGRect, middlePoint: CGPoint)  -> Path {

        Path { path in
            path.move(to: frame.origin)
            path.addLines([
                middlePoint,
                .init(x: frame.origin.x, y: frame.maxY),
                frame.origin])
            path.closeSubpath()
        }
    }

    func TriangleStokePath(frame: CGRect, middlePoint: CGPoint)  -> Path {

        Path { path in
            path.move(to: frame.origin)
            path.addLine(to: middlePoint)
            path.addLine(to: .init(x: frame.origin.x, y: frame.maxY))

        }
    }
}

struct Guyana_Previews: PreviewProvider {
    static var previews: some View {
        Guyana()
    }
}
