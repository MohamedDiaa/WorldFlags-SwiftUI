//
//  DrawCurvedLine.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-23.
//

import SwiftUI

struct CurvedLine: Shape {

    func path(in rect: CGRect) -> Path {

        Path { path in

        }
    }
}

struct DrawCurvedLine: View {
    var body: some View {

        GeometryReader { geometry in

            let rect = geometry.frame(in: .local)
            let pt1 = CGPoint(x: 0.5 * rect.width, y: 0 * rect.height)
            let pt2 = CGPoint(x: 0.5 * rect.width, y: 1 * rect.height)

            Path { path in

                path.move(to: pt1)
                path.addLine(to: pt2)
                //                path.addQuadCurve(
                //                    to: pt2,
                //                    control: CGPoint(x: 0 , y: 0.5 * rect.height)
                //                )

            }
            .strokedPath(.init(lineWidth: 3, dash: [5, 5])).foregroundColor(.blue).background(.yellow)
        }
    }
}

struct DrawCurvedLine_Previews: PreviewProvider {
    static var previews: some View {
        DrawCurvedLine()
    }
}
