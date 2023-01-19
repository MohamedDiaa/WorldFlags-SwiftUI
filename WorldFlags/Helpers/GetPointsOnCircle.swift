//
//  GetPointsOnCircle.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-19.
//

import SwiftUI

func getPointsOnCircle(radius: CGFloat,
                       origin: CGPoint,
                       count: UInt,
                       tiltAngle: Double = 0) -> [CGPoint] {

    var pts: [CGPoint] = []
    let pi = Double.pi
    for k in 0...count {

        let cparam = (2 * pi * Double(k) / Double(count)) + (pi / 2) + tiltAngle
        let angleShift =  pi + (2 * pi / 10.0)
        let x = radius * cos(cparam + angleShift)
        let sparam = (2 * pi * Double(k) / Double(count)) + (pi / 2) + tiltAngle
        let y = radius * sin(sparam + angleShift)
        let pt = CGPoint(x: x + origin.x,
                         y: y + origin.y)

        pts.append(pt)
    }
    return pts
}
