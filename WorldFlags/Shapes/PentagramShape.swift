//
//  PentagramShape.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-26.
//

import SwiftUI

struct PentagramShape: Shape {

    func path(in rect: CGRect) -> Path {

        Path { path in
            let side = min(rect.width, rect.height)
            let pts = getPointsOnCircle(radius: side, origin: rect.center, count: 5)

            path.move(to: pts[0])

            path.addLines([
            pts[2],
            pts[4],
            pts[1],
            pts[3],
            pts[0]])

            path.closeSubpath()
        }
    }
}

struct PentagramShapeTest_Previews: PreviewProvider {
    static var previews: some View {
        PentagramShape()
    }
}
