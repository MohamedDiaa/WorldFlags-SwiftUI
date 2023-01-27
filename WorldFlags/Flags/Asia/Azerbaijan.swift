//
//  Azerbaijan.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-27.
//

import SwiftUI

struct Azerbaijan: View {

    var body: some View {
        let lightBlue = Color(red: 0.32, green: 0.71, blue: 0.87)
        let red = Color(red: 0.86, green: 0.26, blue: 0.27)
        let green = Color(red: 0.39, green: 0.62, blue: 0.24)

        GeometryReader { geo in
            let frame = geo.frame(in: .local)

            ZStack {
                VStack(spacing: 0) {
                    lightBlue
                    red
                    green
                }

                Crescent
                    .foregroundColor(.white)

                Octagram
                    .offset(x: frame.width / 2 + 70, y: frame.height / 2 )
                    .foregroundColor(.white)
                    .rotationEffect(Angle(degrees: 8))
            }
        }
    }

    @ViewBuilder
    private var Crescent: some View {

        ZStack {
            Circle()
                .frame(width: 220)
            Circle()
                .frame(width: 190)
                .offset(x: 38)
                .blendMode(.destinationOut)
        }
        .compositingGroup()
    }

    @ViewBuilder
    private var Octagram: some View {

        let pts = getPointsOnCircle(radius: 50, origin: .zero, count: 8)
        let pts2 = getPointsOnCircle(radius: 30, origin: .zero, count: 8, tiltAngle: 0.44)

        Path { path in

            path.move(to: pts[0])
            for index in 0..<8 {
                path.addLine(to: pts2[index])
                let nextIndex = index + 1
                if nextIndex < 8 {
                    path.addLine(to: pts[nextIndex])
                }
            }
        }
    }
}

struct Azerbaijan_Previews: PreviewProvider {
    static var previews: some View {
        Azerbaijan()
    }
}
