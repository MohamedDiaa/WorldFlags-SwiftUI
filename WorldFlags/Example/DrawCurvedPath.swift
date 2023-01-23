//
//  DrawCurvedPath.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-20.
//

import SwiftUI

struct DrawCurvedPath: View {

    let circleRelativeCenters = [
        CGPoint(x: 0.8, y: 0.2),
        CGPoint(x: 0.2, y: 0.5),
        CGPoint(x: 0.8, y: 0.8),
    ]

    var body: some View {
        GeometryReader { geometry in
            let normalizedCenters = circleRelativeCenters
                .map { center in
                    CGPoint(
                        x: center.x * geometry.size.width,
                        y: center.y * geometry.size.height
                    )
                }
            Path { path in
                var prevPoint = CGPoint(x: normalizedCenters[0].x / 4, y: normalizedCenters[0].y / 2)
                path.move(to: prevPoint)
                normalizedCenters.forEach { center in
                        path.addQuadCurve(
                            to: center,
                            control: .init(
                                x: (center.x + prevPoint.x) / 2,
                                y: (center.y - prevPoint.y) / 2)
                        )
                        prevPoint = center
                }
            }.stroke(lineWidth: 3).foregroundColor(.blue).background(Color.yellow)

            Path { path in
                let circleDiamter = geometry.size.width / 5
                let circleFrameSize = CGSize(width: circleDiamter, height: circleDiamter)
                let circleCornerSize = CGSize(width: circleDiamter / 2, height: circleDiamter / 2)
                normalizedCenters.forEach { center in
                    path.addRoundedRect(
                        in: CGRect(
                            origin: CGPoint(
                                x: center.x - circleFrameSize.width / 2,
                                y: center.y - circleFrameSize.width / 2
                            ), size: circleFrameSize
                        ),
                        cornerSize: circleCornerSize
                    )
                }
            }.fill()

            ForEach(normalizedCenters.indices, id: \.self) { i in
                let center = normalizedCenters[i]
                let circleDiamter = geometry.size.width / 6
                let circleFrameSize = CGSize(width: circleDiamter, height: circleDiamter)
                Circle()
                    .frame(width: circleFrameSize.width, height: circleFrameSize.height)
                    .offset(
                        x: center.x - circleFrameSize.width / 2,
                        y: center.y - circleFrameSize.width / 2
                    )
            }.foregroundColor(.green)
        }.frame(maxWidth: .infinity, maxHeight: .infinity).foregroundColor(.blue).background(Color.yellow)
    }
}

struct DrawCurvedPath_Previews: PreviewProvider {
    static var previews: some View {
        DrawCurvedPath()
    }
}
