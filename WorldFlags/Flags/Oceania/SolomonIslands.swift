//
//  SolomonIslands.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-19.
//

import SwiftUI

struct SolomonIslands: View {
    
    let green = Color(red: 0.19, green: 0.35, blue: 0.22)
    let blue = Color(red: 0.13, green: 0.31, blue: 0.7)
    let golden = Color(red: 0.96, green: 0.83, blue: 0.29)
    
    var body: some View {

        GeometryReader { geometry in

            let rect = geometry.frame(in: .local)

            ZStack {
                blue
                    .overlay {
                        ZStack {
                            let centerStarPoint = CGPoint(x: 120, y: 120)
                            let pts = getPointsOnCircle(radius: 80, origin: centerStarPoint, count: 4, tiltAngle: 0.13) + [centerStarPoint]

                            ForEach(pts, id: \.self) { pt in

                                StarShape()
                                    .frame(width: 50)
                                    .foregroundColor(golden)
                                    .position(pt)

                            }
                        }
                    }

                green
                    .mask {
                        Path { path in
                            path.move(to: CGPoint(x: rect.maxX, y: 0))
                            path.addLines(
                                [CGPoint(x: rect.maxX, y: rect.maxY),
                                 CGPoint(x: 0, y: rect.maxY),
                                 CGPoint(x: rect.maxX, y: 0)])
                        }
                    }

                golden
                    .mask {

                        let opposite = rect.width / 2.0
                        let adjacent = rect.height / 2.0

                        let angle = atan(opposite / adjacent)

                        Rectangle()
                            .frame(width: 20)
                            .rotationEffect(Angle(radians: angle))

                    }
                    .scaleEffect(2.2)
            }
        }
    }
}

struct SolomonIslands_Previews: PreviewProvider {
    static var previews: some View {
        SolomonIslands()
    }
}
